.class public interface abstract Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelsOrBuilder;
.super Ljava/lang/Object;
.source "ClientState.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/ClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StoredClientPaymentChannelsOrBuilder"
.end annotation


# virtual methods
.method public abstract getChannels(I)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
.end method

.method public abstract getChannelsCount()I
.end method

.method public abstract getChannelsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChannelsOrBuilder(I)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;
.end method

.method public abstract getChannelsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation
.end method
