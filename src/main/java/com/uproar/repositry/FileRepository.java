package com.uproar.repositry;

import com.uproar.entity.File;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FileRepository extends CrudRepository<File, Long> {
}
