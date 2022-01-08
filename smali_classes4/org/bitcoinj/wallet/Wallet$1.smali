.class Lorg/bitcoinj/wallet/Wallet$1;
.super Ljava/util/LinkedHashMap;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/bitcoinj/core/Sha256Hash;",
        "Lorg/bitcoinj/core/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method constructor <init>(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet$1;->this$0:Lorg/bitcoinj/wallet/Wallet;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)Z"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet$1;->size()I

    move-result p1

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
