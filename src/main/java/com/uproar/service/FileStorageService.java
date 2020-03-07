package com.uproar.service;

import com.uproar.entity.File;
import com.uproar.repositry.FileRepository;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class FileStorageService {

  private FileRepository fileRepository;

  public FileStorageService(FileRepository fileRepository) {
    this.fileRepository = fileRepository;
  }

  public File storeFile(MultipartFile multipartFile) throws IOException {
    File file = new File(multipartFile.getOriginalFilename(), multipartFile.getContentType(), multipartFile.getBytes());
    file = fileRepository.save(file);
    return file;
  }

  public File getFile(Long fileId) throws FileNotFoundException {
    return fileRepository.findById(fileId)
      .orElseThrow(() -> new FileNotFoundException("File not found with id " + fileId));
  }

  public List<File> storeFiles(MultipartFile[] files) {
    List<File> list = new ArrayList<>();
    for (MultipartFile file : files) {
      File fileEntity = null;
      try {
        fileEntity = storeFile(file);
      } catch (IOException e) {
        System.out.println("Could not upload file: " + file.getName());
        e.printStackTrace();
      }
      list.add(fileEntity);
    }
    return list;
  }

  public ResponseEntity<Resource> downloadFile(Long fileId) throws FileNotFoundException {
    File file = fileRepository.findById(fileId).orElseThrow(FileNotFoundException::new);
    return ResponseEntity.ok()
      .contentType(MediaType.parseMediaType(file.getContentType()))
      .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename =\"" + file.getFilename() + "\"")
      .body(new ByteArrayResource(file.getData()));
  }
}
