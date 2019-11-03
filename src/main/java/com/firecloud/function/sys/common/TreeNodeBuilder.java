package com.firecloud.function.sys.common;

import com.firecloud.function.sys.domain.TreeNode;

import java.util.ArrayList;
import java.util.List;

public class TreeNodeBuilder  {
    /**
     *
     *   把没有层级关系的集合变成有层级关系的
     *
     * @param treeNodes
     * @param topPid
     * @return
     */
    public static List<TreeNode> build(List<TreeNode> treeNodes, Integer topPid) {

        List<TreeNode> nodeList = new ArrayList<>();

        for (TreeNode n1 : treeNodes) {
            /**
             * 如果传过来的id是1，则为父节点
             */
            if (n1.getPid() == topPid){
                nodeList.add(n1);
                /**
                 * 开发出过错
                 * 将子节点添加到父节点中
                 */
                for (TreeNode n2 : treeNodes) {
                    if (n1.getId() == n2.getPid() || n1.getId().equals(n2.getPid())) {
                        n1.getChildren().add(n2);
                    }
                }
            }
        }
        return nodeList;
    }

}
