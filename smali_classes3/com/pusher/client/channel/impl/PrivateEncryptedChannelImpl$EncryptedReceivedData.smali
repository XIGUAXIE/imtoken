.class Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$EncryptedReceivedData;
.super Ljava/lang/Object;
.source "PrivateEncryptedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedReceivedData"
.end annotation


# instance fields
.field ciphertext:Ljava/lang/String;

.field nonce:Ljava/lang/String;

.field final synthetic this$0:Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;


# direct methods
.method private constructor <init>(Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$EncryptedReceivedData;->this$0:Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCiphertext()[B
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$EncryptedReceivedData;->ciphertext:Ljava/lang/String;

    invoke-static {v0}, Lcom/pusher/client/util/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$EncryptedReceivedData;->nonce:Ljava/lang/String;

    invoke-static {v0}, Lcom/pusher/client/util/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
