.class public Lorg/apache/commons/beanutils/BeanMap$Entry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;
.source "BeanMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/BeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Entry"
.end annotation


# instance fields
.field private final owner:Lorg/apache/commons/beanutils/BeanMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/beanutils/BeanMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 767
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 768
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanMap$Entry;->owner:Lorg/apache/commons/beanutils/BeanMap;

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 779
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 780
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanMap$Entry;->owner:Lorg/apache/commons/beanutils/BeanMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/beanutils/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 782
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanMap$Entry;->owner:Lorg/apache/commons/beanutils/BeanMap;

    invoke-virtual {v2, v0, p1}, Lorg/apache/commons/beanutils/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanMap$Entry;->owner:Lorg/apache/commons/beanutils/BeanMap;

    invoke-virtual {p1, v0}, Lorg/apache/commons/beanutils/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 784
    invoke-super {p0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
