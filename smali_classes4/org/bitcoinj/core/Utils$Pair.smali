.class Lorg/bitcoinj/core/Utils$Pair;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/bitcoinj/core/Utils$Pair;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field item:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bitcoinj/core/Utils$Pair;->count:I

    iput p1, p0, Lorg/bitcoinj/core/Utils$Pair;->item:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 583
    check-cast p1, Lorg/bitcoinj/core/Utils$Pair;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Utils$Pair;->compareTo(Lorg/bitcoinj/core/Utils$Pair;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bitcoinj/core/Utils$Pair;)I
    .locals 1

    .line 587
    iget v0, p0, Lorg/bitcoinj/core/Utils$Pair;->count:I

    iget p1, p1, Lorg/bitcoinj/core/Utils$Pair;->count:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    neg-int p1, p1

    return p1
.end method
