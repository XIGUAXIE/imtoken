.class final Lorg/bitcoinj/core/ECKey$2;
.super Ljava/lang/Object;
.source "ECKey.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/ECKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/bitcoinj/core/ECKey;",
        ">;"
    }
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes;->lexicographicalComparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/ECKey$2;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 111
    check-cast p1, Lorg/bitcoinj/core/ECKey;

    check-cast p2, Lorg/bitcoinj/core/ECKey;

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/ECKey$2;->compare(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)I
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey$2;->comparator:Ljava/util/Comparator;

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
