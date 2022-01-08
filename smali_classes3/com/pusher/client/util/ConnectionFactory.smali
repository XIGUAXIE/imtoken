.class public abstract Lcom/pusher/client/util/ConnectionFactory;
.super Ljava/lang/Object;
.source "ConnectionFactory.java"


# instance fields
.field private channelName:Ljava/lang/String;

.field private socketId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBody()Ljava/lang/String;
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/pusher/client/util/ConnectionFactory;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCharset()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public getSocketId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/pusher/client/util/ConnectionFactory;->socketId:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/pusher/client/util/ConnectionFactory;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setSocketId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/pusher/client/util/ConnectionFactory;->socketId:Ljava/lang/String;

    return-void
.end method
