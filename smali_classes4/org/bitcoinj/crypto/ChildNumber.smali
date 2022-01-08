.class public Lorg/bitcoinj/crypto/ChildNumber;
.super Ljava/lang/Object;
.source "ChildNumber.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/bitcoinj/crypto/ChildNumber;",
        ">;"
    }
.end annotation


# static fields
.field public static final HARDENED_BIT:I = -0x80000000

.field public static final ONE:Lorg/bitcoinj/crypto/ChildNumber;

.field public static final ZERO:Lorg/bitcoinj/crypto/ChildNumber;

.field public static final ZERO_HARDENED:Lorg/bitcoinj/crypto/ChildNumber;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lorg/bitcoinj/crypto/ChildNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(I)V

    sput-object v0, Lorg/bitcoinj/crypto/ChildNumber;->ZERO:Lorg/bitcoinj/crypto/ChildNumber;

    .line 39
    new-instance v0, Lorg/bitcoinj/crypto/ChildNumber;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(I)V

    sput-object v0, Lorg/bitcoinj/crypto/ChildNumber;->ONE:Lorg/bitcoinj/crypto/ChildNumber;

    .line 40
    new-instance v0, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    sput-object v0, Lorg/bitcoinj/crypto/ChildNumber;->ZERO_HARDENED:Lorg/bitcoinj/crypto/ChildNumber;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/bitcoinj/crypto/ChildNumber;->i:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lorg/bitcoinj/crypto/ChildNumber;->hasHardenedBit(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/high16 p2, -0x80000000

    or-int/2addr p1, p2

    .line 48
    :cond_0
    iput p1, p0, Lorg/bitcoinj/crypto/ChildNumber;->i:I

    return-void

    .line 47
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Most significant bit is reserved and shouldn\'t be set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static hasHardenedBit(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/crypto/ChildNumber;->compareTo(Lorg/bitcoinj/crypto/ChildNumber;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bitcoinj/crypto/ChildNumber;)I
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/ChildNumber;->num()I

    move-result v0

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/ChildNumber;->num()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    iget v2, p0, Lorg/bitcoinj/crypto/ChildNumber;->i:I

    check-cast p1, Lorg/bitcoinj/crypto/ChildNumber;

    iget p1, p1, Lorg/bitcoinj/crypto/ChildNumber;->i:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getI()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/bitcoinj/crypto/ChildNumber;->i:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/bitcoinj/crypto/ChildNumber;->i:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/bitcoinj/crypto/ChildNumber;->i:I

    return v0
.end method

.method public isHardened()Z
    .locals 1

    .line 64
    iget v0, p0, Lorg/bitcoinj/crypto/ChildNumber;->i:I

    invoke-static {v0}, Lorg/bitcoinj/crypto/ChildNumber;->hasHardenedBit(I)Z

    move-result v0

    return v0
.end method

.method public num()I
    .locals 2

    .line 73
    iget v0, p0, Lorg/bitcoinj/crypto/ChildNumber;->i:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 78
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/ChildNumber;->num()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/ChildNumber;->isHardened()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "H"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%d%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
