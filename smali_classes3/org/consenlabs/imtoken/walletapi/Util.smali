.class public Lorg/consenlabs/imtoken/walletapi/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static XPubCommonIv:Ljava/lang/String; = "9C0C30889CBCC5E01AB5B2BB88715799"

.field public static XPubCommonKey128:Ljava/lang/String; = "B888D25EC8C12BD5043777B1AC49F872"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encXPub(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 20
    :try_start_0
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/Util;->XPubCommonKey128:Ljava/lang/String;

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 22
    sget-object v1, Lorg/consenlabs/imtoken/walletapi/Util;->XPubCommonIv:Ljava/lang/String;

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 23
    invoke-static {p0, v0, v1}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->encryptByCBC([B[B[B)[B

    move-result-object p0

    .line 24
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 26
    :catch_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "encrypt_xpub_error"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
