.class public interface abstract Lorg/bitcoinj/net/StreamConnection;
.super Ljava/lang/Object;
.source "StreamConnection.java"


# virtual methods
.method public abstract connectionClosed()V
.end method

.method public abstract connectionOpened()V
.end method

.method public abstract getMaxMessageSize()I
.end method

.method public abstract receiveBytes(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setWriteTarget(Lorg/bitcoinj/net/MessageWriteTarget;)V
.end method
