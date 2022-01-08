.class Lorg/bitcoinj/store/SPVBlockStore$1;
.super Ljava/util/LinkedHashMap;
.source "SPVBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/store/SPVBlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/bitcoinj/core/Sha256Hash;",
        "Lorg/bitcoinj/core/StoredBlock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/store/SPVBlockStore;


# direct methods
.method constructor <init>(Lorg/bitcoinj/store/SPVBlockStore;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/bitcoinj/store/SPVBlockStore$1;->this$0:Lorg/bitcoinj/store/SPVBlockStore;

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
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;)Z"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lorg/bitcoinj/store/SPVBlockStore$1;->size()I

    move-result p1

    const/16 v0, 0x802

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
