.class Lcom/pusher/client/channel/impl/ChannelImpl$1;
.super Ljava/lang/Object;
.source "ChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pusher/client/channel/impl/ChannelImpl;->onMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/channel/impl/ChannelImpl;

.field final synthetic val$listener:Lcom/pusher/client/channel/SubscriptionEventListener;

.field final synthetic val$pusherEvent:Lcom/pusher/client/channel/PusherEvent;


# direct methods
.method constructor <init>(Lcom/pusher/client/channel/impl/ChannelImpl;Lcom/pusher/client/channel/SubscriptionEventListener;Lcom/pusher/client/channel/PusherEvent;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->this$0:Lcom/pusher/client/channel/impl/ChannelImpl;

    iput-object p2, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$listener:Lcom/pusher/client/channel/SubscriptionEventListener;

    iput-object p3, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$pusherEvent:Lcom/pusher/client/channel/PusherEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$listener:Lcom/pusher/client/channel/SubscriptionEventListener;

    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl$1;->val$pusherEvent:Lcom/pusher/client/channel/PusherEvent;

    invoke-interface {v0, v1}, Lcom/pusher/client/channel/SubscriptionEventListener;->onEvent(Lcom/pusher/client/channel/PusherEvent;)V

    return-void
.end method
