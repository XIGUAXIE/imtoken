.class public Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;
.super Ljava/lang/Object;
.source "SignatureData.java"


# instance fields
.field private final r:[B

.field private final s:[B

.field private final v:I


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->v:I

    .line 17
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->r:[B

    .line 18
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->s:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    aget-byte v0, p1, v0

    iput v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->v:I

    const/16 v0, 0x21

    const/4 v1, 0x1

    .line 23
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->r:[B

    const/16 v1, 0x41

    .line 24
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->s:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    check-cast p1, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    .line 50
    iget v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->v:I

    iget v2, p1, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->v:I

    if-eq v1, v2, :cond_2

    return v0

    .line 53
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->r:[B

    iget-object v2, p1, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->r:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 56
    :cond_3
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->s:[B

    iget-object p1, p1, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->s:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getR()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->r:[B

    return-object v0
.end method

.method public getS()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->s:[B

    return-object v0
.end method

.method public getV()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->v:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 61
    iget v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->v:I

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->r:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->s:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 69
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getR()[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getS()[B

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 71
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getV()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "%s%s%02x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
