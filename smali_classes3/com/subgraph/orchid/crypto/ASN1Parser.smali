.class public Lcom/subgraph/orchid/crypto/ASN1Parser;
.super Ljava/lang/Object;
.source "ASN1Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;,
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;,
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;,
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;,
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;
    }
.end annotation


# static fields
.field private static final ASN1_TAG_BITSTRING:I = 0x3

.field private static final ASN1_TAG_INTEGER:I = 0x2

.field private static final ASN1_TAG_SEQUENCE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRemainingBytes(Ljava/nio/ByteBuffer;)[B
    .locals 1

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 143
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method createBlob(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;
    .locals 1

    .line 138
    new-instance v0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->getRemainingBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;-><init>([B)V

    return-object v0
.end method

.method getObjectBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3

    .line 86
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1Length(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method parseASN1(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;
    .locals 2

    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0x1f

    .line 65
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->getObjectBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->createBlob(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1Sequence(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;

    move-result-object p1

    return-object p1

    .line 73
    :cond_1
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1BitString(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;

    move-result-object p1

    return-object p1

    .line 71
    :cond_2
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1Integer(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;

    move-result-object p1

    return-object p1
.end method

.method parseASN1BitString(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;
    .locals 1

    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->getRemainingBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;-><init>([B)V

    return-object v0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method parseASN1Integer(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;
    .locals 2

    .line 126
    new-instance v0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->getRemainingBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method parseASN1Length(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1LengthLong(ILjava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method parseASN1LengthLong(ILjava/nio/ByteBuffer;)I
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v1, v1, 0x8

    .line 112
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method parseASN1Sequence(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;
    .locals 2

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;-><init>(Ljava/util/List;)V

    return-object p1
.end method
