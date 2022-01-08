.class Lcom/pusher/client/example/PresenceChannelExampleApp$2;
.super Ljava/lang/Object;
.source "PresenceChannelExampleApp.java"

# interfaces
.implements Lcom/pusher/client/channel/PresenceChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/example/PresenceChannelExampleApp;-><init>([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/example/PresenceChannelExampleApp;


# direct methods
.method constructor <init>(Lcom/pusher/client/example/PresenceChannelExampleApp;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp$2;->this$0:Lcom/pusher/client/example/PresenceChannelExampleApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Authentication failure due to [%s], exception was [%s]"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/pusher/client/channel/PusherEvent;)V
    .locals 3

    .line 91
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p1}, Lcom/pusher/client/channel/PusherEvent;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Received event [%s]"

    .line 91
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscriptionSucceeded(Ljava/lang/String;)V
    .locals 3

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Subscription to channel [%s] succeeded"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onUsersInformationReceived(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/User;",
            ">;)V"
        }
    .end annotation

    .line 103
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Received user information"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp$2;->this$0:Lcom/pusher/client/example/PresenceChannelExampleApp;

    invoke-static {p1}, Lcom/pusher/client/example/PresenceChannelExampleApp;->access$000(Lcom/pusher/client/example/PresenceChannelExampleApp;)V

    return-void
.end method

.method public userSubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V
    .locals 3

    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lcom/pusher/client/channel/User;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "A new user has joined channel [%s]: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp$2;->this$0:Lcom/pusher/client/example/PresenceChannelExampleApp;

    invoke-static {p1}, Lcom/pusher/client/example/PresenceChannelExampleApp;->access$000(Lcom/pusher/client/example/PresenceChannelExampleApp;)V

    return-void
.end method

.method public userUnsubscribed(Ljava/lang/String;Lcom/pusher/client/channel/User;)V
    .locals 3

    .line 115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "A user has left channel [%s]: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp$2;->this$0:Lcom/pusher/client/example/PresenceChannelExampleApp;

    invoke-static {p1}, Lcom/pusher/client/example/PresenceChannelExampleApp;->access$000(Lcom/pusher/client/example/PresenceChannelExampleApp;)V

    return-void
.end method
