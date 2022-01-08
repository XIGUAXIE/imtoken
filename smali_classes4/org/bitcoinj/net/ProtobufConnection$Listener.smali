.class public interface abstract Lorg/bitcoinj/net/ProtobufConnection$Listener;
.super Ljava/lang/Object;
.source "ProtobufConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/net/ProtobufConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract connectionClosed(Lorg/bitcoinj/net/ProtobufConnection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "TMessageType;>;)V"
        }
    .end annotation
.end method

.method public abstract connectionOpen(Lorg/bitcoinj/net/ProtobufConnection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "TMessageType;>;)V"
        }
    .end annotation
.end method

.method public abstract messageReceived(Lorg/bitcoinj/net/ProtobufConnection;Lcom/google/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "TMessageType;>;TMessageType;)V"
        }
    .end annotation
.end method
