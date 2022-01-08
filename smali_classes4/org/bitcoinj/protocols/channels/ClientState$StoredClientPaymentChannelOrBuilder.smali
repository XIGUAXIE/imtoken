.class public interface abstract Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;
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
    name = "StoredClientPaymentChannelOrBuilder"
.end annotation


# virtual methods
.method public abstract getCloseTransactionHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getContractTransaction()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getExpiryTime()J
.end method

.method public abstract getId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMajorVersion()I
.end method

.method public abstract getMyKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMyPublicKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRefundFees()J
.end method

.method public abstract getRefundTransaction()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getServerKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getValueToMe()J
.end method

.method public abstract hasCloseTransactionHash()Z
.end method

.method public abstract hasContractTransaction()Z
.end method

.method public abstract hasExpiryTime()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasMajorVersion()Z
.end method

.method public abstract hasMyKey()Z
.end method

.method public abstract hasMyPublicKey()Z
.end method

.method public abstract hasRefundFees()Z
.end method

.method public abstract hasRefundTransaction()Z
.end method

.method public abstract hasServerKey()Z
.end method

.method public abstract hasValueToMe()Z
.end method
