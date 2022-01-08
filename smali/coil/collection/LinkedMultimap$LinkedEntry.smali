.class final Lcoil/collection/LinkedMultimap$LinkedEntry;
.super Ljava/lang/Object;
.source "LinkedMultimap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/collection/LinkedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkedMultimap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkedMultimap.kt\ncoil/collection/LinkedMultimap$LinkedEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u00020\u0003B\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0002\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0003\u00a2\u0006\u0002\u0010\u0005J\r\u0010\u001a\u001a\u0004\u0018\u00018\u0003\u00a2\u0006\u0002\u0010\u0007R\u0015\u0010\u0004\u001a\u0004\u0018\u00018\u0002\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R&\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR&\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcoil/collection/LinkedMultimap$LinkedEntry;",
        "K",
        "V",
        "",
        "key",
        "(Ljava/lang/Object;)V",
        "getKey",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "next",
        "getNext",
        "()Lcoil/collection/LinkedMultimap$LinkedEntry;",
        "setNext",
        "(Lcoil/collection/LinkedMultimap$LinkedEntry;)V",
        "prev",
        "getPrev",
        "setPrev",
        "size",
        "",
        "getSize",
        "()I",
        "values",
        "",
        "add",
        "",
        "value",
        "removeLast",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private next:Lcoil/collection/LinkedMultimap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcoil/collection/LinkedMultimap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private prev:Lcoil/collection/LinkedMultimap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcoil/collection/LinkedMultimap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->key:Ljava/lang/Object;

    .line 100
    move-object p1, p0

    check-cast p1, Lcoil/collection/LinkedMultimap$LinkedEntry;

    iput-object p1, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->prev:Lcoil/collection/LinkedMultimap$LinkedEntry;

    .line 101
    iput-object p1, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->next:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->values:Ljava/util/List;

    :goto_0
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNext()Lcoil/collection/LinkedMultimap$LinkedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcoil/collection/LinkedMultimap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->next:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-object v0
.end method

.method public final getPrev()Lcoil/collection/LinkedMultimap$LinkedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcoil/collection/LinkedMultimap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->prev:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final setNext(Lcoil/collection/LinkedMultimap$LinkedEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/collection/LinkedMultimap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->next:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-void
.end method

.method public final setPrev(Lcoil/collection/LinkedMultimap$LinkedEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/collection/LinkedMultimap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->prev:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-void
.end method
