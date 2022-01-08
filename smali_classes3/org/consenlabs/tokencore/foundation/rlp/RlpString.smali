.class public Lorg/consenlabs/tokencore/foundation/rlp/RlpString;
.super Ljava/lang/Object;
.source "RlpString.java"

# interfaces
.implements Lorg/consenlabs/tokencore/foundation/rlp/RlpType;


# static fields
.field private static final EMPTY:[B


# instance fields
.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 11
    sput-object v0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->EMPTY:[B

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->value:[B

    return-void
.end method

.method public static create(B)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;
    .locals 3

    .line 28
    new-instance v0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;-><init>([B)V

    return-object v0
.end method

.method public static create(J)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;
    .locals 1

    .line 50
    new-instance v0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;-><init>([B)V

    return-object v0
.end method

.method public static create(Ljava/math/BigInteger;)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;
    .locals 3

    .line 33
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 34
    new-instance p0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    sget-object v0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->EMPTY:[B

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;-><init>([B)V

    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 37
    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    array-length v2, p0

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;-><init>([B)V

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;-><init>([B)V

    return-object v0
.end method

.method public static create([B)Lorg/consenlabs/tokencore/foundation/rlp/RlpString;
    .locals 1

    .line 24
    new-instance v0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    check-cast p1, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;

    .line 64
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->value:[B

    iget-object p1, p1, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->value:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->value:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/rlp/RlpString;->value:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
