.class final Lorg/bitcoinj/core/ECKey$1;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 99
    check-cast p1, Lorg/bitcoinj/core/ECKey;

    check-cast p2, Lorg/bitcoinj/core/ECKey;

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/ECKey$1;->compare(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)I
    .locals 5

    .line 103
    iget-wide v0, p1, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    iget-wide v2, p2, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_0
    iget-wide v0, p1, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    iget-wide p1, p2, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
