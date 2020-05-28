package com.dao;

import com.Domains.Sanswer;
import com.Domains.Singles;
import com.Domains.completeBack;
import com.Domains.domainComplete;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface sanswerMapper {

    List<Sanswer> selectDisAnsFrOCC(Sanswer sanswer);

    List<Singles> selectSingles(Singles singles);

    List<Singles> selectSinglesInChoose(Singles singles);

    List<completeBack> selectComplete(domainComplete domains);
}
