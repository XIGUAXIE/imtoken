.class Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;
.super Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;
.source "WeakFastHashMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/WeakFastHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/beanutils/WeakFastHashMap<",
        "TK;TV;>.CollectionView<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/beanutils/WeakFastHashMap;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/beanutils/WeakFastHashMap;Lorg/apache/commons/beanutils/WeakFastHashMap$1;)V
    .locals 0

    .line 746
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;)V

    return-void
.end method


# virtual methods
.method protected get(Ljava/util/Map;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 750
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0

    .line 746
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;->iteratorNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method protected iteratorNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p1
.end method
