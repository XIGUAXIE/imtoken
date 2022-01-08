.class public final Lcoil/Coil;
.super Ljava/lang/Object;
.source "Coil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Coil.kt\ncoil/Coil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0087\u0008J\u0019\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\r\u0010\u0011\u001a\u00020\u0012H\u0001\u00a2\u0006\u0002\u0008\u0013J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0004H\u0007J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0006H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcoil/Coil;",
        "",
        "()V",
        "imageLoader",
        "Lcoil/ImageLoader;",
        "imageLoaderFactory",
        "Lcoil/ImageLoaderFactory;",
        "enqueue",
        "Lcoil/request/Disposable;",
        "request",
        "Lcoil/request/ImageRequest;",
        "execute",
        "Lcoil/request/ImageResult;",
        "(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "context",
        "Landroid/content/Context;",
        "newImageLoader",
        "reset",
        "",
        "reset$coil_singleton_release",
        "setImageLoader",
        "factory",
        "coil-singleton_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/Coil;

.field private static imageLoader:Lcoil/ImageLoader;

.field private static imageLoaderFactory:Lcoil/ImageLoaderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcoil/Coil;

    invoke-direct {v0}, Lcoil/Coil;-><init>()V

    sput-object v0, Lcoil/Coil;->INSTANCE:Lcoil/Coil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v0

    invoke-interface {v0, p0}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static final execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcoil/ImageLoader;->execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final execute$$forInline(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v0, p0, p1}, Lcoil/ImageLoader;->execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object p0
.end method

.method public static final imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcoil/Coil;->imageLoader:Lcoil/ImageLoader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcoil/Coil;->INSTANCE:Lcoil/Coil;

    invoke-direct {v0, p0}, Lcoil/Coil;->newImageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final declared-synchronized newImageLoader(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 3

    monitor-enter p0

    .line 74
    :try_start_0
    sget-object v0, Lcoil/Coil;->imageLoader:Lcoil/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    .line 77
    :cond_0
    :try_start_1
    sget-object v0, Lcoil/Coil;->imageLoaderFactory:Lcoil/ImageLoaderFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcoil/ImageLoaderFactory;->newImageLoader()Lcoil/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Lcoil/ImageLoaderFactory;

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcoil/ImageLoaderFactory;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcoil/ImageLoaderFactory;->newImageLoader()Lcoil/ImageLoader;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    .line 79
    :cond_4
    sget-object v0, Lcoil/ImageLoader;->Companion:Lcoil/ImageLoader$Companion;

    invoke-virtual {v0, p1}, Lcoil/ImageLoader$Companion;->create(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v0

    .line 80
    :goto_1
    check-cast v1, Lcoil/ImageLoaderFactory;

    sput-object v1, Lcoil/Coil;->imageLoaderFactory:Lcoil/ImageLoaderFactory;

    .line 81
    sput-object v0, Lcoil/Coil;->imageLoader:Lcoil/ImageLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final declared-synchronized setImageLoader(Lcoil/ImageLoader;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcoil/Coil;

    monitor-enter v0

    :try_start_0
    const-string v1, "imageLoader"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 53
    check-cast v1, Lcoil/ImageLoaderFactory;

    sput-object v1, Lcoil/Coil;->imageLoaderFactory:Lcoil/ImageLoaderFactory;

    .line 54
    sput-object p0, Lcoil/Coil;->imageLoader:Lcoil/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized setImageLoader(Lcoil/ImageLoaderFactory;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcoil/Coil;

    monitor-enter v0

    :try_start_0
    const-string v1, "factory"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sput-object p0, Lcoil/Coil;->imageLoaderFactory:Lcoil/ImageLoaderFactory;

    const/4 p0, 0x0

    .line 67
    check-cast p0, Lcoil/ImageLoader;

    sput-object p0, Lcoil/Coil;->imageLoader:Lcoil/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized reset$coil_singleton_release()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 89
    :try_start_0
    move-object v1, v0

    check-cast v1, Lcoil/ImageLoader;

    sput-object v1, Lcoil/Coil;->imageLoader:Lcoil/ImageLoader;

    .line 90
    check-cast v0, Lcoil/ImageLoaderFactory;

    sput-object v0, Lcoil/Coil;->imageLoaderFactory:Lcoil/ImageLoaderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
