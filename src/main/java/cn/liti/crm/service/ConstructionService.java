package cn.liti.crm.service;

import java.util.List;
import java.util.Map;

import cn.liti.crm.model.auto.Construction;
import cn.liti.crm.model.auto.InConstruction;

public interface ConstructionService {
    List<Construction> findConstruction();
}
