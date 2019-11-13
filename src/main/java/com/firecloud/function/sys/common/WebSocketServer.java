package com.firecloud.function.sys.common;

import cn.hutool.json.JSON;
import cn.hutool.json.JSONUtil;
import com.firecloud.function.sys.config.WebSocketEndpointConfigure;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

@ServerEndpoint(value = "/websocket/{userId}", configurator = WebSocketEndpointConfigure.class)
@Component
@Slf4j
public class WebSocketServer {


    //静态变量，用来记录当前在线连接数。应该把它设计成线程安全的。
    private static int onlineCount = 0;
    //concurrent包的线程安全Set，用来存放每个客户端对应的MyWebSocket对象。
    private static CopyOnWriteArraySet<WebSocketServer> webSockets = new CopyOnWriteArraySet<>();


    //与某个客户端的连接会话，需要通过它来给客户端发送数据
    private Session session;

    //接收sid
    private String userId="";
    /**
     * 连接建立成功调用的方法*/
    @OnOpen
    public void onOpen(Session session,@PathParam("userId")String userId) {
        this.session = session;
        log.info("新客户端连入，用户id：" + userId);

        webSockets.add(this);
        log.info("【websocket消息】有新的连接, 总数:{}", webSockets.size());
    }


    /**
     * 用户退出时，连接关闭调用的方法
     */
    public static void onCloseConection(String userId) {
        webSockets.remove(userId); // 从set中删除
    }


    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose(@PathParam("userId")String userId) {
        onCloseConection(userId);
        log.info("有一连接关闭！当前在线人数为" + getOnlineCount());
    }

    /**
     * 收到客户端消息后调用的方法
     *
     * @param message 客户端发送过来的消息*/
    @OnMessage
    public void onMessage(String message, Session session) {
    	log.info("收到来自窗口"+userId+"的信息:"+message);
    }
    /**
     * 发生错误时调用
     */
    @OnError
    public void onError(Session session, Throwable error) {
        log.error("websocket出现错误");
    }



    /**
     * 自定义消息
     */
    public static void sendInfo(String userId,String message)  {
        for (WebSocketServer webSocket: webSockets) {
            try {
                if (userId != null) {
                    webSocket.session.getBasicRemote().sendText(message);
                }
            } catch (Exception e) {
                log.error(e.getMessage(),e);
            }
        }
    }

    public static synchronized int getOnlineCount() {
        return onlineCount;
    }

    public static synchronized void addOnlineCount() {
        WebSocketServer.onlineCount++;
    }

    public static synchronized void subOnlineCount() {
        WebSocketServer.onlineCount--;
    }
}
