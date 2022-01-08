.class public final Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;",
        "",
        "",
        "get",
        "()Ljava/util/List;",
        "beaconCoreMoshiAdapters",
        "Ljava/util/List;",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;

.field private static final beaconCoreMoshiAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;->INSTANCE:Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter;

    invoke-direct {v1}, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconSuggestedArticleAdapter;

    invoke-direct {v1}, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconSuggestedArticleAdapter;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;->beaconCoreMoshiAdapters:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;->beaconCoreMoshiAdapters:Ljava/util/List;

    return-object v0
.end method
