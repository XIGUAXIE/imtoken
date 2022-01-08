.class public final Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;
.super Ljava/lang/Object;
.source "TweetNaclFast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/crypto/nacl/TweetNaclFast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecretBox"
.end annotation


# static fields
.field public static final boxzerobytesLength:I = 0x10

.field public static final nonceLength:I = 0x18

.field public static final zerobytesLength:I = 0x20


# instance fields
.field private key:[B

.field private nonce:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const-wide/16 v0, 0x44

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;-><init>([BJ)V

    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;->key:[B

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;->nonce:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public open([BII[B)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 41
    array-length v1, p1

    add-int v2, p2, p3

    if-lt v1, v2, :cond_4

    const/16 v1, 0x10

    if-lt p3, v1, :cond_4

    if-eqz p4, :cond_4

    array-length v1, p4

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, p3, 0x10

    .line 46
    new-array v2, v1, [B

    .line 49
    new-array v3, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p3, :cond_1

    add-int/lit8 v6, v5, 0x10

    add-int v7, v5, p2

    .line 52
    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;->key:[B

    invoke-static {v3, v2, v1, p4, p1}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_secretbox_open([B[BI[B[B)I

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, -0x20

    .line 59
    new-array p1, v1, [B

    :goto_1
    if-ge v4, v1, :cond_3

    add-int/lit8 p2, v4, 0x20

    .line 62
    aget-byte p2, v3, p2

    aput-byte p2, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public open([B[B)[B
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 36
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;->open([BII[B)[B

    move-result-object p1

    return-object p1
.end method
