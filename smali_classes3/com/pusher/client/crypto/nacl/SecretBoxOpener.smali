.class public Lcom/pusher/client/crypto/nacl/SecretBoxOpener;
.super Ljava/lang/Object;
.source "SecretBoxOpener.java"


# instance fields
.field private key:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null key passed"

    .line 37
    invoke-static {p1, v0}, Lcom/pusher/client/util/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key length must be 32 bytes, but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pusher/client/util/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 41
    iput-object p1, p0, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;->key:[B

    return-void
.end method


# virtual methods
.method public clearKey()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;->key:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 59
    iget-object v0, p0, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;->key:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;->key:[B

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "key not cleared correctly"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open([B[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/client/crypto/nacl/AuthenticityException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;->key:[B

    const-string v1, "key has been cleared, create new instance"

    invoke-static {v0, v1}, Lcom/pusher/client/util/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    array-length v0, p2

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonce length must be 24 bytes, but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;->key:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pusher/client/util/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 49
    :try_start_0
    new-instance v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;

    iget-object v1, p0, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;->key:[B

    invoke-direct {v0, v1}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;-><init>([B)V

    .line 50
    invoke-virtual {v0, p1, p2}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;->open([B[B)[B

    move-result-object p1

    .line 51
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 53
    :catch_0
    new-instance p1, Lcom/pusher/client/crypto/nacl/AuthenticityException;

    invoke-direct {p1}, Lcom/pusher/client/crypto/nacl/AuthenticityException;-><init>()V

    throw p1
.end method
