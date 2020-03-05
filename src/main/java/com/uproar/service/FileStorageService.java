package com.uproar.service;

import com.uproar.entity.FileEntity;
import com.uproar.repositry.FileRepository;
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

  public FileEntity storeFile(MultipartFile multipartFile) throws IOException {
    FileEntity file = new FileEntity(multipartFile.getOriginalFilename(), multipartFile.getContentType(), multipartFile.getBytes());
    System.out.println(file);
    file = fileRepository.save(file);
    System.out.println(file);
    return file;
  }

  public FileEntity getFile(Long fileId) throws FileNotFoundException {
    return fileRepository.findById(fileId)
      .orElseThrow(() -> new FileNotFoundException("File not found with id " + fileId));
  }

  public List<FileEntity> storeFiles(MultipartFile[] files) {
    List<FileEntity> list = new ArrayList<>();
    for (MultipartFile file : files) {
      FileEntity fileEntity = null;
      try {
        fileEntity = storeFile(file);
      } catch (IOException e) {
        System.out.println("One of the many file upload died");
        e.printStackTrace();
      }
      list.add(fileEntity);
    }
    return list;
  }
}
