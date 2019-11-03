package com.firecloud.function.sys.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class ActiverUser {

    private com.firecloud.function.sys.domain.User user;

    private List<String> list;

    private List<String> permissions;
}
