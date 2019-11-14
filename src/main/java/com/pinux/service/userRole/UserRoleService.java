package com.pinux.service.userRole;

import com.pinux.entity.role.Role;
import com.pinux.entity.userRole.UserRole;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author pinux
 * @since 2019-11-14
 */
public interface UserRoleService extends IService<UserRole> {

    List<Role> findByUserName(String userName);

}
