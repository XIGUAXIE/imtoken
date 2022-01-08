.class public final Lcom/helpscout/beacon/a/c/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/helpscout/beacon/a/c/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/c/d/a;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/c/d/a;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/c/d/a;->b:Lcom/helpscout/beacon/a/c/d/a;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/c/d/a;->a:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/c/d/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final a(Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/c/d/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/helpscout/beacon/a/c/d/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
