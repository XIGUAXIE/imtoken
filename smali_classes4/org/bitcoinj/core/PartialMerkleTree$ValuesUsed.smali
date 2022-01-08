.class Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;
.super Ljava/lang/Object;
.source "PartialMerkleTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PartialMerkleTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValuesUsed"
.end annotation


# instance fields
.field public bitsUsed:I

.field public hashesUsed:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    iput v0, p0, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/core/PartialMerkleTree$1;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;-><init>()V

    return-void
.end method
