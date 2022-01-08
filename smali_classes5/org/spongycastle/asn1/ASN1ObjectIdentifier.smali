.class public Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1ObjectIdentifier.java"


# static fields
.field private static final LONG_LIMIT:J = 0xffffffffffff80L

.field private static cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private body:[B

.field identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 405
    sput-object v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 166
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_1

    .line 171
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not an OID"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'identifier\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 2

    .line 186
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    const/4 v0, 0x0

    .line 187
    invoke-static {p2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-void

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not a valid OID branch"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 84
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 85
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    move-wide v9, v6

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 90
    :goto_0
    array-length v12, v1

    if-eq v8, v12, :cond_8

    .line 92
    aget-byte v12, v1, v8

    and-int/lit16 v12, v12, 0xff

    const-wide v13, 0xffffffffffff80L

    const/16 v15, 0x32

    const/16 v4, 0x2e

    const/4 v5, 0x7

    const-wide/16 v16, 0x50

    cmp-long v18, v9, v13

    if-gtz v18, :cond_4

    and-int/lit8 v13, v12, 0x7f

    int-to-long v13, v13

    add-long/2addr v9, v13

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_3

    if-eqz v3, :cond_2

    const-wide/16 v12, 0x28

    cmp-long v3, v9, v12

    if-gez v3, :cond_0

    const/16 v3, 0x30

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    cmp-long v3, v9, v16

    if-gez v3, :cond_1

    const/16 v3, 0x31

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sub-long/2addr v9, v12

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sub-long v9, v9, v16

    :goto_1
    const/4 v3, 0x0

    .line 118
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-wide v9, v6

    goto :goto_2

    :cond_3
    shl-long/2addr v9, v5

    goto :goto_2

    :cond_4
    if-nez v11, :cond_5

    .line 131
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    :cond_5
    and-int/lit8 v13, v12, 0x7f

    int-to-long v13, v13

    .line 133
    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_7

    if-eqz v3, :cond_6

    .line 138
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    const/4 v3, 0x0

    .line 143
    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-wide v9, v6

    const/4 v11, 0x0

    goto :goto_2

    .line 150
    :cond_7
    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 155
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 156
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->body:[B

    return-void
.end method

.method private doOutput(Ljava/io/ByteArrayOutputStream;)V
    .locals 7

    .line 268
    new-instance v0, Lorg/spongycastle/asn1/OIDTokenizer;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    .line 271
    invoke-virtual {v0}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-gt v3, v4, :cond_0

    int-to-long v5, v1

    .line 274
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v5, v1

    invoke-direct {p0, p1, v5, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    .line 278
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 281
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {v0}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_1

    .line 286
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    .line 290
    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 6

    .line 409
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 411
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    return-object v0

    .line 414
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 416
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x7f

    .line 420
    sget-object v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    monitor-enter v2

    .line 422
    :try_start_0
    sget-object v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v3, v3, v0

    const/16 v4, 0x80

    if-nez v3, :cond_1

    .line 425
    sget-object v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-array v5, v4, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aput-object v5, v3, v0

    move-object v3, v5

    .line 428
    :cond_1
    aget-object v5, v3, v1

    if-nez v5, :cond_2

    .line 431
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v0, v3, v1

    monitor-exit v2

    return-object v0

    .line 434
    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v3

    invoke-static {p0, v3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 436
    monitor-exit v2

    return-object v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    .line 440
    sget-object v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v3, v3, v0

    if-nez v3, :cond_4

    .line 443
    sget-object v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-array v4, v4, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aput-object v4, v3, v0

    move-object v3, v4

    .line 446
    :cond_4
    aget-object v0, v3, v1

    if-nez v0, :cond_5

    .line 449
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v0, v3, v1

    monitor-exit v2

    return-object v0

    .line 452
    :cond_5
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 454
    monitor-exit v2

    return-object v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v1, 0x7f

    .line 458
    aget-object v1, v3, v0

    if-nez v1, :cond_7

    .line 461
    new-instance v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v1, v3, v0

    monitor-exit v2

    return-object v1

    .line 463
    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    .line 470
    :cond_8
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 463
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 3

    if-eqz p0, :cond_3

    .line 28
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_1

    .line 35
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    .line 38
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 40
    check-cast p0, [B

    check-cast p0, [B

    .line 43
    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct object identifier from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_3
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez p1, :cond_1

    .line 70
    instance-of p1, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0

    .line 72
    :cond_1
    :goto_0
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method private static isValidBranchID(Ljava/lang/String;I)Z
    .locals 5

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_3

    .line 362
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_0

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 3

    .line 391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x32

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 402
    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;J)V
    .locals 6

    const/16 v0, 0x9

    new-array v1, v0, [B

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    const/16 v3, 0x8

    aput-byte v2, v1, v3

    :goto_0
    const-wide/16 v4, 0x80

    cmp-long v2, p2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x7

    shr-long/2addr p2, v2

    add-int/lit8 v3, v3, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 238
    aput-byte v2, v1, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v3

    .line 240
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7

    .line 247
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 255
    :cond_0
    new-array v3, v0, [B

    add-int/lit8 v4, v0, -0x1

    move v5, v4

    :goto_0
    if-ltz v5, :cond_1

    .line 258
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 259
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 261
    :cond_1
    aget-byte p2, v3, v4

    and-int/lit8 p2, p2, 0x7f

    int-to-byte p2, p2

    aput-byte p2, v3, v4

    .line 262
    invoke-virtual {p1, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    .line 341
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 213
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-object v0
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v0

    const/4 v1, 0x6

    .line 328
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 329
    array-length v1, v0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 330
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write([B)V

    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v0

    array-length v0, v0

    .line 319
    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method protected declared-synchronized getBody()[B
    .locals 1

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->body:[B

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 301
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->body:[B

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->body:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public on(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 3

    .line 224
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 351
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
