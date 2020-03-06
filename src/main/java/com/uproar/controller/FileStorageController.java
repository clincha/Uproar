package com.uproar.controller;

import com.uproar.entity.File;
import com.uproar.service.FileStorageService;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/file")
public class FileStorageController {

  private FileStorageService fileStorageService;

  public FileStorageController(FileStorageService fileStorageService) {
    this.fileStorageService = fileStorageService;
  }

  @PostMapping("/uploadFile")
  public File uploadFile(@RequestParam("file") MultipartFile file) throws IOException {
    return fileStorageService.storeFile(file);
  }

  @PostMapping("/uploadMulti")
  public List<File> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {
    return fileStorageService.storeFiles(files);
  }

  @GetMapping("/{fileId}")
  public ResponseEntity<Resource> downloadFile(@PathVariable Long fileId) throws FileNotFoundException {
    return fileStorageService.downloadFile(fileId);
  }

}
