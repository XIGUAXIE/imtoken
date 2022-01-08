.class Lcom/pusher/client/example/ExampleApp$2;
.super Ljava/lang/Object;
.source "ExampleApp.java"

# interfaces
.implements Lcom/pusher/client/channel/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/example/ExampleApp;-><init>([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/example/ExampleApp;


# direct methods
.method constructor <init>(Lcom/pusher/client/example/ExampleApp;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/pusher/client/example/ExampleApp$2;->this$0:Lcom/pusher/client/example/ExampleApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/pusher/client/channel/PusherEvent;)V
    .locals 3

    .line 78
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    invoke-virtual {p1}, Lcom/pusher/client/channel/PusherEvent;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Received event [%s]"

    .line 78
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscriptionSucceeded(Ljava/lang/String;)V
    .locals 3

    .line 72
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
