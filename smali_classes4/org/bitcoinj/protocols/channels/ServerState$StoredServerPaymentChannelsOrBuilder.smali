.class public interface abstract Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelsOrBuilder;
.super Ljava/lang/Object;
.source "ServerState.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/ServerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StoredServerPaymentChannelsOrBuilder"
.end annotation


# virtual methods
.method public abstract getChannels(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
.end method

.method public abstract getChannelsCount()I
.end method

.method public abstract getChannelsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChannelsOrBuilder(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;
.end method

.method public abstract getChannelsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation
.end method
