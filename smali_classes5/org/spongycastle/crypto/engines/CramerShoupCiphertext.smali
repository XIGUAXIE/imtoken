.class public Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
.super Ljava/lang/Object;
.source "CramerShoupCiphertext.java"


# instance fields
.field e:Ljava/math/BigInteger;

.field u1:Ljava/math/BigInteger;

.field u2:Ljava/math/BigInteger;

.field v:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    .line 21
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    .line 22
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    .line 23
    iput-object p4, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 32
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->byteArrayToInt([B)I

    move-result v3

    .line 34
    new-array v4, v3, [B

    .line 36
    invoke-static {p1, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v0

    .line 38
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    .line 40
    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->byteArrayToInt([B)I

    move-result v4

    .line 42
    new-array v5, v4, [B

    add-int/2addr v3, v0

    .line 44
    invoke-static {p1, v3, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    .line 46
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v4, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    .line 48
    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->byteArrayToInt([B)I

    move-result v4

    .line 50
    new-array v5, v4, [B

    add-int/2addr v3, v0

    .line 52
    invoke-static {p1, v3, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    .line 54
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v4, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    .line 56
    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->byteArrayToInt([B)I

    move-result v1

    .line 58
    new-array v4, v1, [B

    add-int/2addr v3, v0

    .line 60
    invoke-static {p1, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v4}, Ljava/math/BigInteger;-><init>([B)V

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    return-void
.end method

.method private byteArrayToInt([B)I
    .locals 5

    .line 168
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x3

    :goto_0
    if-ltz v2, :cond_1

    .line 175
    aget-byte v3, p1, v2

    rsub-int/lit8 v4, v2, 0x3

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private intToByteArray(I)[B
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x3

    mul-int/lit8 v4, v2, 0x8

    ushr-int v4, p1, v4

    int-to-byte v4, v4

    .line 161
    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getE()Ljava/math/BigInteger;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getU1()Ljava/math/BigInteger;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getU2()Ljava/math/BigInteger;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV()Ljava/math/BigInteger;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setE(Ljava/math/BigInteger;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public setU1(Ljava/math/BigInteger;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    return-void
.end method

.method public setU2(Ljava/math/BigInteger;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    return-void
.end method

.method public setV(Ljava/math/BigInteger;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    return-void
.end method

.method public toByteArray()[B
    .locals 12

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 127
    array-length v1, v0

    .line 128
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 129
    array-length v3, v2

    .line 130
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 131
    array-length v5, v4

    .line 132
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 133
    array-length v7, v6

    add-int v8, v1, v3

    add-int/2addr v8, v5

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x10

    .line 136
    new-array v8, v8, [B

    .line 137
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->intToByteArray(I)[B

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static {v9, v11, v8, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-static {v0, v11, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v10

    .line 141
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->intToByteArray(I)[B

    move-result-object v0

    invoke-static {v0, v11, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v10

    .line 143
    invoke-static {v2, v11, v8, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    .line 145
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->intToByteArray(I)[B

    move-result-object v0

    invoke-static {v0, v11, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v10

    .line 147
    invoke-static {v4, v11, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    .line 149
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->intToByteArray(I)[B

    move-result-object v0

    invoke-static {v0, v11, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v10

    .line 151
    invoke-static {v6, v11, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nu2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ne: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
