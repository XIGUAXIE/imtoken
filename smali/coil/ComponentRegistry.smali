.class public final Lcoil/ComponentRegistry;
.super Ljava/lang/Object;
.source "ComponentRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/ComponentRegistry$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u00bf\u0001\u0008\u0002\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012P\u0010\u0006\u001aL\u0012$\u0012\"\u0012\u0010\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u0001\u0012\u0002\u0008\u00030\u0008\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t0\u00070\u0004j\"\u0012\u0010\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u0001\u0012\u0002\u0008\u00030\u0008\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t`\n\u0012H\u0010\u000b\u001aD\u0012 \u0012\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000c\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t0\u00070\u0004j\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000c\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t`\n\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0004\u00a2\u0006\u0002\u0010\u000fJ\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011RV\u0010\u000b\u001aD\u0012 \u0012\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000c\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t0\u00070\u0004j\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000c\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R^\u0010\u0006\u001aL\u0012$\u0012\"\u0012\u0010\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u0001\u0012\u0002\u0008\u00030\u0008\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t0\u00070\u0004j\"\u0012\u0010\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u0001\u0012\u0002\u0008\u00030\u0008\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcoil/ComponentRegistry;",
        "",
        "()V",
        "interceptors",
        "",
        "Lcoil/intercept/Interceptor;",
        "mappers",
        "Lkotlin/Pair;",
        "Lcoil/map/Mapper;",
        "Ljava/lang/Class;",
        "Lcoil/util/MultiList;",
        "fetchers",
        "Lcoil/fetch/Fetcher;",
        "decoders",
        "Lcoil/decode/Decoder;",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getDecoders$coil_base_release",
        "()Ljava/util/List;",
        "getFetchers$coil_base_release",
        "getInterceptors$coil_base_release",
        "getMappers$coil_base_release",
        "newBuilder",
        "Lcoil/ComponentRegistry$Builder;",
        "Builder",
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
.field private final decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/decode/Decoder;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcoil/fetch/Fetcher<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/intercept/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcoil/map/Mapper<",
            "+",
            "Ljava/lang/Object;",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcoil/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcoil/intercept/Interceptor;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcoil/map/Mapper<",
            "+",
            "Ljava/lang/Object;",
            "*>;+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcoil/fetch/Fetcher<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lcoil/decode/Decoder;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/ComponentRegistry;->interceptors:Ljava/util/List;

    iput-object p2, p0, Lcoil/ComponentRegistry;->mappers:Ljava/util/List;

    iput-object p3, p0, Lcoil/ComponentRegistry;->fetchers:Ljava/util/List;

    iput-object p4, p0, Lcoil/ComponentRegistry;->decoders:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getDecoders$coil_base_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcoil/decode/Decoder;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcoil/ComponentRegistry;->decoders:Ljava/util/List;

    return-object v0
.end method

.method public final getFetchers$coil_base_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcoil/fetch/Fetcher<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcoil/ComponentRegistry;->fetchers:Ljava/util/List;

    return-object v0
.end method

.method public final getInterceptors$coil_base_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcoil/intercept/Interceptor;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcoil/ComponentRegistry;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final getMappers$coil_base_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcoil/map/Mapper<",
            "+",
            "Ljava/lang/Object;",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcoil/ComponentRegistry;->mappers:Ljava/util/List;

    return-object v0
.end method

.method public final newBuilder()Lcoil/ComponentRegistry$Builder;
    .locals 1

    .line 26
    new-instance v0, Lcoil/ComponentRegistry$Builder;

    invoke-direct {v0, p0}, Lcoil/ComponentRegistry$Builder;-><init>(Lcoil/ComponentRegistry;)V

    return-object v0
.end method
