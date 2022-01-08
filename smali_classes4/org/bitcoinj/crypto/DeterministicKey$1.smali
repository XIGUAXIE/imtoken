.class final Lorg/bitcoinj/crypto/DeterministicKey$1;
.super Ljava/lang/Object;
.source "DeterministicKey.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/crypto/DeterministicKey;
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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lorg/bitcoinj/core/ECKey;

    check-cast p2, Lorg/bitcoinj/core/ECKey;

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/crypto/DeterministicKey$1;->compare(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)I
    .locals 0

    .line 49
    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object p1

    .line 50
    check-cast p2, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p2}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Lorg/bitcoinj/crypto/ChildNumber;->compareTo(Lorg/bitcoinj/crypto/ChildNumber;)I

    move-result p1

    return p1
.end method
