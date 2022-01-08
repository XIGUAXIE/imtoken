.class public final Lcoil/request/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "ImageRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRequest.kt\ncoil/request/ImageRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,901:1\n1#2:902\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010D\u001a\u00020\u00002\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020FJ\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010I\u001a\u00020\rJ\u0006\u0010J\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\tJ\u000e\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u001cJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010N\u001a\u00020\u00002\u0008\u0010O\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010N\u001a\u00020\u00002\u0008\u0008\u0001\u0010P\u001a\u00020\u001cJ\u0010\u0010Q\u001a\u00020\u00002\u0008\u0010O\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010Q\u001a\u00020\u00002\u0008\u0008\u0001\u0010P\u001a\u00020\u001cJ#\u0010 \u001a\u00020\u0000\"\n\u0008\u0000\u0010R\u0018\u0001*\u00020\u00012\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002HR0\"H\u0086\u0008J.\u0010 \u001a\u00020\u0000\"\u0008\u0008\u0000\u0010R*\u00020\u00012\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002HR0\"2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u0002HR0#H\u0001J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020TJ\u0010\u0010&\u001a\u00020\u00002\u0008\u0010&\u001a\u0004\u0018\u00010\'J\u0010\u0010&\u001a\u00020\u00002\u0008\u0010U\u001a\u0004\u0018\u00010VJ\u00ca\u0001\u0010(\u001a\u00020\u00002#\u0008\u0006\u0010W\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020Z0X2#\u0008\u0006\u0010[\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020Z0X28\u0008\u0006\u0010\\\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(\u0005\u0012\u0013\u0012\u00110^\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(_\u0012\u0004\u0012\u00020Z0]28\u0008\u0006\u0010`\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(\u0005\u0012\u0013\u0012\u00110a\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(b\u0012\u0004\u0012\u00020Z0]H\u0086\u0008\u00f8\u0001\u0000J\u0010\u0010(\u001a\u00020\u00002\u0008\u0010(\u001a\u0004\u0018\u00010)J\u0010\u0010*\u001a\u00020\u00002\u0008\u0010c\u001a\u0004\u0018\u00010+J\u0010\u0010*\u001a\u00020\u00002\u0008\u0010c\u001a\u0004\u0018\u00010FJ\u000e\u0010,\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0016J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0016J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020dJ\u0010\u0010e\u001a\u00020\u00002\u0008\u0010O\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010e\u001a\u00020\u00002\u0008\u0008\u0001\u0010P\u001a\u00020\u001cJ\u0010\u00101\u001a\u00020\u00002\u0008\u0010c\u001a\u0004\u0018\u00010+J\u0010\u00101\u001a\u00020\u00002\u0008\u0010c\u001a\u0004\u0018\u00010FJ\u000e\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u000e\u00105\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\tJ\u000e\u0010f\u001a\u00020\u00002\u0006\u0010E\u001a\u00020FJ\u000e\u0010g\u001a\u00020\u00002\u0006\u0010c\u001a\u00020FJ\u0008\u0010h\u001a\u00020ZH\u0002J\u0008\u0010i\u001a\u00020ZH\u0002J\u0008\u0010j\u001a\u00020\'H\u0002J\u0008\u0010k\u001a\u000208H\u0002J\u0008\u0010l\u001a\u00020:H\u0002J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010;\u001a\u000208J\u0016\u0010m\u001a\u00020\u00002\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020FJ&\u0010n\u001a\u00020\u00002\u0006\u0010c\u001a\u00020F2\u0008\u0010G\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010o\u001a\u0004\u0018\u00010FH\u0007J\u000e\u0010p\u001a\u00020\u00002\u0006\u0010p\u001a\u00020qJ\u000e\u0010p\u001a\u00020\u00002\u0006\u0010r\u001a\u00020:J\u0010\u0010p\u001a\u00020\u00002\u0008\u0008\u0001\u0010p\u001a\u00020\u001cJ\u001a\u0010p\u001a\u00020\u00002\u0008\u0008\u0001\u0010s\u001a\u00020\u001c2\u0008\u0008\u0001\u0010t\u001a\u00020\u001cJ\u007f\u0010=\u001a\u00020\u00002%\u0008\u0006\u0010W\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u001a\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(e\u0012\u0004\u0012\u00020Z0X2%\u0008\u0006\u0010\\\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u001a\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u00020Z0X2#\u0008\u0006\u0010`\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008Y\u0012\u0008\u0008E\u0012\u0004\u0008\u0008(u\u0012\u0004\u0012\u00020Z0XH\u0086\u0008\u00f8\u0001\u0000J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010v\u001a\u00020wJ\u0010\u0010=\u001a\u00020\u00002\u0008\u0010=\u001a\u0004\u0018\u00010>J\u001f\u0010?\u001a\u00020\u00002\u0012\u0010?\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020A0x\"\u00020A\u00a2\u0006\u0002\u0010yJ\u0014\u0010?\u001a\u00020\u00002\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020A0@J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020CH\u0007R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001dR$\u0010 \u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\"\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030#\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u00102\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001dR\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010<\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010=\u001a\u0004\u0018\u00010>X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010?\u001a\u0008\u0012\u0004\u0012\u00020A0@X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010B\u001a\u0004\u0018\u00010CX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006z"
    }
    d2 = {
        "Lcoil/request/ImageRequest$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "request",
        "Lcoil/request/ImageRequest;",
        "(Lcoil/request/ImageRequest;Landroid/content/Context;)V",
        "allowHardware",
        "",
        "Ljava/lang/Boolean;",
        "allowRgb565",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "colorSpace",
        "Landroid/graphics/ColorSpace;",
        "data",
        "decoder",
        "Lcoil/decode/Decoder;",
        "defaults",
        "Lcoil/request/DefaultRequestOptions;",
        "diskCachePolicy",
        "Lcoil/request/CachePolicy;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "errorDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "errorResId",
        "",
        "Ljava/lang/Integer;",
        "fallbackDrawable",
        "fallbackResId",
        "fetcher",
        "Lkotlin/Pair;",
        "Lcoil/fetch/Fetcher;",
        "Ljava/lang/Class;",
        "headers",
        "Lokhttp3/Headers$Builder;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "listener",
        "Lcoil/request/ImageRequest$Listener;",
        "memoryCacheKey",
        "Lcoil/memory/MemoryCache$Key;",
        "memoryCachePolicy",
        "networkCachePolicy",
        "parameters",
        "Lcoil/request/Parameters$Builder;",
        "placeholderDrawable",
        "placeholderMemoryCacheKey",
        "placeholderResId",
        "precision",
        "Lcoil/size/Precision;",
        "premultipliedAlpha",
        "resolvedLifecycle",
        "resolvedScale",
        "Lcoil/size/Scale;",
        "resolvedSizeResolver",
        "Lcoil/size/SizeResolver;",
        "scale",
        "sizeResolver",
        "target",
        "Lcoil/target/Target;",
        "transformations",
        "",
        "Lcoil/transform/Transformation;",
        "transition",
        "Lcoil/transition/Transition;",
        "addHeader",
        "name",
        "",
        "value",
        "enable",
        "config",
        "build",
        "crossfade",
        "durationMillis",
        "policy",
        "error",
        "drawable",
        "drawableResId",
        "fallback",
        "T",
        "type",
        "Lokhttp3/Headers;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onStart",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "",
        "onCancel",
        "onError",
        "Lkotlin/Function2;",
        "",
        "throwable",
        "onSuccess",
        "Lcoil/request/ImageResult$Metadata;",
        "metadata",
        "key",
        "Lcoil/request/Parameters;",
        "placeholder",
        "removeHeader",
        "removeParameter",
        "resetResolvedScale",
        "resetResolvedValues",
        "resolveLifecycle",
        "resolveScale",
        "resolveSizeResolver",
        "setHeader",
        "setParameter",
        "cacheKey",
        "size",
        "Lcoil/size/Size;",
        "resolver",
        "width",
        "height",
        "result",
        "imageView",
        "Landroid/widget/ImageView;",
        "",
        "([Lcoil/transform/Transformation;)Lcoil/request/ImageRequest$Builder;",
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
.field private allowHardware:Ljava/lang/Boolean;

.field private allowRgb565:Ljava/lang/Boolean;

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private colorSpace:Landroid/graphics/ColorSpace;

.field private final context:Landroid/content/Context;

.field private data:Ljava/lang/Object;

.field private decoder:Lcoil/decode/Decoder;

.field private defaults:Lcoil/request/DefaultRequestOptions;

.field private diskCachePolicy:Lcoil/request/CachePolicy;

.field private dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResId:Ljava/lang/Integer;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResId:Ljava/lang/Integer;

.field private fetcher:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "+",
            "Lcoil/fetch/Fetcher<",
            "*>;+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private headers:Lokhttp3/Headers$Builder;

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private listener:Lcoil/request/ImageRequest$Listener;

.field private memoryCacheKey:Lcoil/memory/MemoryCache$Key;

.field private memoryCachePolicy:Lcoil/request/CachePolicy;

.field private networkCachePolicy:Lcoil/request/CachePolicy;

.field private parameters:Lcoil/request/Parameters$Builder;

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

.field private placeholderResId:Ljava/lang/Integer;

.field private precision:Lcoil/size/Precision;

.field private premultipliedAlpha:Z

.field private resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

.field private resolvedScale:Lcoil/size/Scale;

.field private resolvedSizeResolver:Lcoil/size/SizeResolver;

.field private scale:Lcoil/size/Scale;

.field private sizeResolver:Lcoil/size/SizeResolver;

.field private target:Lcoil/target/Target;

.field private transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcoil/transform/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private transition:Lcoil/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 324
    sget-object p1, Lcoil/request/DefaultRequestOptions;->INSTANCE:Lcoil/request/DefaultRequestOptions;

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 p1, 0x0

    .line 325
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 326
    move-object v0, p1

    check-cast v0, Lcoil/target/Target;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 327
    move-object v0, p1

    check-cast v0, Lcoil/request/ImageRequest$Listener;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    .line 328
    move-object v0, p1

    check-cast v0, Lcoil/memory/MemoryCache$Key;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 329
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/ColorSpace;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    .line 331
    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlin/Pair;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fetcher:Lkotlin/Pair;

    .line 332
    move-object v0, p1

    check-cast v0, Lcoil/decode/Decoder;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->decoder:Lcoil/decode/Decoder;

    .line 333
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    .line 334
    move-object v0, p1

    check-cast v0, Lokhttp3/Headers$Builder;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 335
    move-object v0, p1

    check-cast v0, Lcoil/request/Parameters$Builder;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    .line 336
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 337
    move-object v1, p1

    check-cast v1, Lcoil/size/SizeResolver;

    iput-object v1, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 338
    move-object v2, p1

    check-cast v2, Lcoil/size/Scale;

    iput-object v2, p0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    .line 339
    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 340
    move-object v3, p1

    check-cast v3, Lcoil/transition/Transition;

    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->transition:Lcoil/transition/Transition;

    .line 341
    move-object v3, p1

    check-cast v3, Lcoil/size/Precision;

    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    .line 342
    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap$Config;

    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 343
    move-object v3, p1

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    .line 344
    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    const/4 v3, 0x1

    .line 345
    iput-boolean v3, p0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    .line 346
    move-object v3, p1

    check-cast v3, Lcoil/request/CachePolicy;

    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 347
    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 348
    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 349
    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    .line 350
    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 351
    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    .line 352
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 353
    iput-object v3, p0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    .line 354
    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 355
    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 356
    iput-object v1, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 357
    iput-object v2, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method public constructor <init>(Lcoil/request/ImageRequest;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcoil/request/ImageRequest$Builder;-><init>(Lcoil/request/ImageRequest;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil/request/ImageRequest;Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 363
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefaults()Lcoil/request/DefaultRequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 364
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 365
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 366
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    .line 367
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 368
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getFetcher()Lkotlin/Pair;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fetcher:Lkotlin/Pair;

    .line 371
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDecoder()Lcoil/decode/Decoder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->decoder:Lcoil/decode/Decoder;

    .line 372
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    .line 373
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 374
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/Parameters;->newBuilder()Lcoil/request/Parameters$Builder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    .line 375
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 376
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 377
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getScale()Lcoil/size/Scale;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    .line 378
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 379
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getTransition()Lcoil/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->transition:Lcoil/transition/Transition;

    .line 380
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getPrecision()Lcoil/size/Precision;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    .line 381
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 382
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getAllowHardware()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    .line 383
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getAllowRgb565()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    .line 384
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPremultipliedAlpha()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    .line 385
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    .line 386
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    .line 387
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/DefinedRequestOptions;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    .line 388
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getPlaceholderResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    .line 389
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getPlaceholderDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 390
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getErrorResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    .line 391
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getErrorDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 392
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getFallbackResId$p(Lcoil/request/ImageRequest;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    .line 393
    invoke-static {p1}, Lcoil/request/ImageRequest;->access$getFallbackDrawable$p(Lcoil/request/ImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 396
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 397
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 398
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 399
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 401
    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 402
    move-object p2, p1

    check-cast p2, Lcoil/size/SizeResolver;

    iput-object p2, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 403
    check-cast p1, Lcoil/size/Scale;

    iput-object p1, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcoil/request/ImageRequest;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 361
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcoil/request/ImageRequest$Builder;-><init>(Lcoil/request/ImageRequest;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic listener$default(Lcoil/request/ImageRequest$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 443
    sget-object p1, Lcoil/request/ImageRequest$Builder$listener$1;->INSTANCE:Lcoil/request/ImageRequest$Builder$listener$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 444
    sget-object p2, Lcoil/request/ImageRequest$Builder$listener$2;->INSTANCE:Lcoil/request/ImageRequest$Builder$listener$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 445
    sget-object p3, Lcoil/request/ImageRequest$Builder$listener$3;->INSTANCE:Lcoil/request/ImageRequest$Builder$listener$3;

    check-cast p3, Lkotlin/jvm/functions/Function2;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 446
    sget-object p4, Lcoil/request/ImageRequest$Builder$listener$4;->INSTANCE:Lcoil/request/ImageRequest$Builder$listener$4;

    check-cast p4, Lkotlin/jvm/functions/Function2;

    :cond_3
    const-string/jumbo p5, "onStart"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "onCancel"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "onError"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "onSuccess"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    new-instance p5, Lcoil/request/ImageRequest$Builder$listener$5;

    invoke-direct {p5, p1, p2, p3, p4}, Lcoil/request/ImageRequest$Builder$listener$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    check-cast p5, Lcoil/request/ImageRequest$Listener;

    invoke-virtual {p0, p5}, Lcoil/request/ImageRequest$Builder;->listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method private final resetResolvedScale()V
    .locals 1

    const/4 v0, 0x0

    .line 861
    check-cast v0, Lcoil/size/Scale;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method private final resetResolvedValues()V
    .locals 2

    const/4 v0, 0x0

    .line 854
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/Lifecycle;

    iput-object v1, p0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 855
    move-object v1, v0

    check-cast v1, Lcoil/size/SizeResolver;

    iput-object v1, p0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    .line 856
    check-cast v0, Lcoil/size/Scale;

    iput-object v0, p0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    return-void
.end method

.method private final resolveLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 2

    .line 865
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 866
    instance-of v1, v0, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_0

    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 867
    :goto_0
    invoke-static {v0}, Lcoil/util/-Contexts;->getLifecycle(Landroid/content/Context;)Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcoil/request/GlobalLifecycle;->INSTANCE:Lcoil/request/GlobalLifecycle;

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    :goto_1
    return-object v0
.end method

.method private final resolveScale()Lcoil/size/Scale;
    .locals 2

    .line 885
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 886
    instance-of v1, v0, Lcoil/size/ViewSizeResolver;

    if-eqz v1, :cond_0

    .line 887
    check-cast v0, Lcoil/size/ViewSizeResolver;

    invoke-interface {v0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v0

    .line 888
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcoil/util/-Extensions;->getScale(Landroid/widget/ImageView;)Lcoil/size/Scale;

    move-result-object v0

    return-object v0

    .line 891
    :cond_0
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 892
    instance-of v1, v0, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_1

    .line 893
    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    .line 894
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcoil/util/-Extensions;->getScale(Landroid/widget/ImageView;)Lcoil/size/Scale;

    move-result-object v0

    return-object v0

    .line 897
    :cond_1
    sget-object v0, Lcoil/size/Scale;->FILL:Lcoil/size/Scale;

    return-object v0
.end method

.method private final resolveSizeResolver()Lcoil/size/SizeResolver;
    .locals 5

    .line 871
    iget-object v0, p0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 872
    instance-of v1, v0, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_3

    .line 873
    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    .line 874
    instance-of v1, v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 875
    sget-object v0, Lcoil/size/SizeResolver;->Companion:Lcoil/size/SizeResolver$Companion;

    sget-object v1, Lcoil/size/OriginalSize;->INSTANCE:Lcoil/size/OriginalSize;

    check-cast v1, Lcoil/size/Size;

    invoke-virtual {v0, v1}, Lcoil/size/SizeResolver$Companion;->create(Lcoil/size/Size;)Lcoil/size/SizeResolver;

    move-result-object v0

    goto :goto_2

    .line 877
    :cond_2
    sget-object v1, Lcoil/size/ViewSizeResolver;->Companion:Lcoil/size/ViewSizeResolver$Companion;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcoil/size/ViewSizeResolver$Companion;->create$default(Lcoil/size/ViewSizeResolver$Companion;Landroid/view/View;ZILjava/lang/Object;)Lcoil/size/ViewSizeResolver;

    move-result-object v0

    check-cast v0, Lcoil/size/SizeResolver;

    goto :goto_2

    .line 880
    :cond_3
    new-instance v0, Lcoil/size/DisplaySizeResolver;

    iget-object v1, p0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcoil/size/DisplaySizeResolver;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcoil/size/SizeResolver;

    :goto_2
    return-object v0
.end method

.method public static synthetic setParameter$default(Lcoil/request/ImageRequest$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    if-eqz p2, :cond_0

    .line 662
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcoil/request/ImageRequest$Builder;->setParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic target$default(Lcoil/request/ImageRequest$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 748
    sget-object p1, Lcoil/request/ImageRequest$Builder$target$1;->INSTANCE:Lcoil/request/ImageRequest$Builder$target$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 749
    sget-object p2, Lcoil/request/ImageRequest$Builder$target$2;->INSTANCE:Lcoil/request/ImageRequest$Builder$target$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 750
    sget-object p3, Lcoil/request/ImageRequest$Builder$target$3;->INSTANCE:Lcoil/request/ImageRequest$Builder$target$3;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_2
    const-string/jumbo p4, "onStart"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "onError"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "onSuccess"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    new-instance p4, Lcoil/request/ImageRequest$Builder$target$4;

    invoke-direct {p4, p1, p2, p3}, Lcoil/request/ImageRequest$Builder$target$4;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast p4, Lcoil/target/Target;

    invoke-virtual {p0, p4}, Lcoil/request/ImageRequest$Builder;->target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 630
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    :goto_0
    invoke-virtual {v1, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final allowHardware(Z)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 573
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 574
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final allowRgb565(Z)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 580
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 581
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 484
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final build()Lcoil/request/ImageRequest;
    .locals 61

    move-object/from16 v0, p0

    .line 814
    new-instance v36, Lcoil/request/ImageRequest;

    .line 815
    iget-object v2, v0, Lcoil/request/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 816
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcoil/request/NullRequestData;->INSTANCE:Lcoil/request/NullRequestData;

    :goto_0
    move-object v3, v1

    .line 817
    iget-object v4, v0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 818
    iget-object v5, v0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    .line 819
    iget-object v6, v0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 820
    iget-object v7, v0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 821
    iget-object v8, v0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    .line 822
    iget-object v9, v0, Lcoil/request/ImageRequest$Builder;->fetcher:Lkotlin/Pair;

    .line 823
    iget-object v10, v0, Lcoil/request/ImageRequest$Builder;->decoder:Lcoil/decode/Decoder;

    .line 824
    iget-object v11, v0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    .line 825
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v12

    :goto_1
    invoke-static {v1}, Lcoil/util/-Extensions;->orEmpty(Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v13

    const-string v1, "headers?.build().orEmpty()"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcoil/request/Parameters$Builder;->build()Lcoil/request/Parameters;

    move-result-object v12

    :cond_2
    invoke-static {v12}, Lcoil/util/-Extensions;->orEmpty(Lcoil/request/Parameters;)Lcoil/request/Parameters;

    move-result-object v14

    .line 827
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcoil/request/ImageRequest$Builder;->resolveLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    :goto_3
    move-object v15, v1

    .line 828
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->resolvedSizeResolver:Lcoil/size/SizeResolver;

    :goto_4
    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcoil/request/ImageRequest$Builder;->resolveSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v1

    :goto_5
    move-object/from16 v16, v1

    .line 829
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->resolvedScale:Lcoil/size/Scale;

    :goto_6
    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcoil/request/ImageRequest$Builder;->resolveScale()Lcoil/size/Scale;

    move-result-object v1

    :goto_7
    move-object/from16 v17, v1

    .line 830
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    :goto_8
    move-object/from16 v18, v1

    .line 831
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->transition:Lcoil/transition/Transition;

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getTransition()Lcoil/transition/Transition;

    move-result-object v1

    :goto_9
    move-object/from16 v19, v1

    .line 832
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getPrecision()Lcoil/size/Precision;

    move-result-object v1

    :goto_a
    move-object/from16 v20, v1

    .line 833
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_c

    goto :goto_b

    :cond_c
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    :goto_b
    move-object/from16 v21, v1

    .line 834
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_c

    :cond_d
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getAllowHardware()Z

    move-result v1

    :goto_c
    move/from16 v22, v1

    .line 835
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_d

    :cond_e
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getAllowRgb565()Z

    move-result v1

    :goto_d
    move/from16 v23, v1

    .line 836
    iget-boolean v12, v0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    .line 837
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    if-eqz v1, :cond_f

    goto :goto_e

    :cond_f
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    :goto_e
    move-object/from16 v24, v1

    .line 838
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    if-eqz v1, :cond_10

    goto :goto_f

    :cond_10
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    :goto_f
    move-object/from16 v25, v1

    .line 839
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    if-eqz v1, :cond_11

    goto :goto_10

    :cond_11
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    invoke-virtual {v1}, Lcoil/request/DefaultRequestOptions;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    :goto_10
    move-object/from16 v26, v1

    .line 840
    new-instance v37, Lcoil/request/DefinedRequestOptions;

    move-object/from16 v33, v37

    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    move/from16 v50, v12

    iget-object v12, v0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    move-object/from16 v51, v15

    iget-object v15, v0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    move-object/from16 v52, v14

    iget-object v14, v0, Lcoil/request/ImageRequest$Builder;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v53, v13

    iget-object v13, v0, Lcoil/request/ImageRequest$Builder;->transition:Lcoil/transition/Transition;

    move-object/from16 v54, v11

    iget-object v11, v0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    move-object/from16 v55, v10

    .line 841
    iget-object v10, v0, Lcoil/request/ImageRequest$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v56, v9

    iget-object v9, v0, Lcoil/request/ImageRequest$Builder;->allowHardware:Ljava/lang/Boolean;

    move-object/from16 v57, v8

    iget-object v8, v0, Lcoil/request/ImageRequest$Builder;->allowRgb565:Ljava/lang/Boolean;

    move-object/from16 v58, v7

    iget-object v7, v0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 v59, v6

    iget-object v6, v0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 v60, v5

    iget-object v5, v0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    move-object/from16 v38, v1

    move-object/from16 v39, v12

    move-object/from16 v40, v15

    move-object/from16 v41, v14

    move-object/from16 v42, v13

    move-object/from16 v43, v11

    move-object/from16 v44, v10

    move-object/from16 v45, v9

    move-object/from16 v46, v8

    move-object/from16 v47, v7

    move-object/from16 v48, v6

    move-object/from16 v49, v5

    .line 840
    invoke-direct/range {v37 .. v49}, Lcoil/request/DefinedRequestOptions;-><init>(Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V

    .line 842
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    move-object/from16 v34, v1

    .line 843
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    move-object/from16 v27, v1

    .line 844
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v1

    .line 845
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    move-object/from16 v29, v1

    .line 846
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v1

    .line 847
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    move-object/from16 v31, v1

    .line 848
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v1

    const/16 v35, 0x0

    move-object/from16 v1, v36

    move-object/from16 v5, v60

    move-object/from16 v6, v59

    move-object/from16 v7, v58

    move-object/from16 v8, v57

    move-object/from16 v9, v56

    move-object/from16 v10, v55

    move-object/from16 v11, v54

    move/from16 v37, v50

    move-object/from16 v12, v53

    move-object/from16 v13, v52

    move-object/from16 v14, v51

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v37

    .line 814
    invoke-direct/range {v1 .. v35}, Lcoil/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil/target/Target;Lcoil/request/ImageRequest$Listener;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Key;Landroid/graphics/ColorSpace;Lkotlin/Pair;Lcoil/decode/Decoder;Ljava/util/List;Lokhttp3/Headers;Lcoil/request/Parameters;Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZZLcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/DefinedRequestOptions;Lcoil/request/DefaultRequestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v36
.end method

.method public final colorSpace(Landroid/graphics/ColorSpace;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string v0, "colorSpace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 494
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->colorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public final crossfade(I)Lcoil/request/ImageRequest$Builder;
    .locals 4

    if-lez p1, :cond_0

    .line 774
    new-instance v0, Lcoil/transition/CrossfadeTransition;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcoil/transition/CrossfadeTransition;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcoil/transition/Transition;

    goto :goto_0

    :cond_0
    sget-object v0, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    :goto_0
    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->transition(Lcoil/transition/Transition;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final crossfade(Z)Lcoil/request/ImageRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 768
    :goto_0
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->crossfade(I)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 419
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 420
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final decoder(Lcoil/decode/Decoder;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 567
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->decoder:Lcoil/decode/Decoder;

    return-object v0
.end method

.method public final defaults(Lcoil/request/DefaultRequestOptions;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string v0, "defaults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 806
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 807
    invoke-direct {v0}, Lcoil/request/ImageRequest$Builder;->resetResolvedScale()V

    return-object v0
.end method

.method public final diskCachePolicy(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "policy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 605
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->diskCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final dispatcher(Lkotlinx/coroutines/CoroutineDispatcher;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 465
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final error(I)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 710
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 711
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 712
    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final error(Landroid/graphics/drawable/Drawable;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 718
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 719
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 720
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->errorResId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final fallback(I)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 726
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 727
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 728
    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final fallback(Landroid/graphics/drawable/Drawable;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 734
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 735
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 736
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->fallbackResId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final synthetic fetcher(Lcoil/fetch/Fetcher;)Lcoil/request/ImageRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil/fetch/Fetcher<",
            "TT;>;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    const-string v0, "fetcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    .line 549
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcoil/request/ImageRequest$Builder;->fetcher(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final fetcher(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcoil/fetch/Fetcher<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    const-string v0, "fetcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 558
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->fetcher:Lkotlin/Pair;

    return-object v0
.end method

.method public final headers(Lokhttp3/Headers;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 621
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final lifecycle(Landroidx/lifecycle/Lifecycle;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 798
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 799
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public final lifecycle(Landroidx/lifecycle/LifecycleOwner;)Lcoil/request/ImageRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 787
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->lifecycle(Landroidx/lifecycle/Lifecycle;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 457
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 458
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->listener:Lcoil/request/ImageRequest$Listener;

    return-object v0
.end method

.method public final listener(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcoil/request/ImageRequest;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcoil/request/ImageRequest;",
            "-",
            "Lcoil/request/ImageResult$Metadata;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    const-string/jumbo v0, "onStart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onSuccess"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcoil/request/ImageRequest$Builder$listener$5;

    invoke-direct {v0, p1, p2, p3, p4}, Lcoil/request/ImageRequest$Builder$listener$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lcoil/request/ImageRequest$Listener;

    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final memoryCacheKey(Lcoil/memory/MemoryCache$Key;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 435
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 436
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    return-object v0
.end method

.method public final memoryCacheKey(Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 428
    sget-object v0, Lcoil/memory/MemoryCache$Key;->Companion:Lcoil/memory/MemoryCache$Key$Companion;

    invoke-virtual {v0, p1}, Lcoil/memory/MemoryCache$Key$Companion;->create(Ljava/lang/String;)Lcoil/memory/MemoryCache$Key;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->memoryCacheKey(Lcoil/memory/MemoryCache$Key;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final memoryCachePolicy(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "policy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 598
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->memoryCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final networkCachePolicy(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "policy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 614
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->networkCachePolicy:Lcoil/request/CachePolicy;

    return-object v0
.end method

.method public final parameters(Lcoil/request/Parameters;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 653
    invoke-virtual {p1}, Lcoil/request/Parameters;->newBuilder()Lcoil/request/Parameters$Builder;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    return-object v0
.end method

.method public final placeholder(I)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 694
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 695
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 696
    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 702
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 703
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 704
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->placeholderResId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final placeholderMemoryCacheKey(Lcoil/memory/MemoryCache$Key;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 687
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 688
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    return-object v0
.end method

.method public final placeholderMemoryCacheKey(Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 680
    sget-object v0, Lcoil/memory/MemoryCache$Key;->Companion:Lcoil/memory/MemoryCache$Key$Companion;

    invoke-virtual {v0, p1}, Lcoil/memory/MemoryCache$Key$Companion;->create(Ljava/lang/String;)Lcoil/memory/MemoryCache$Key;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->placeholderMemoryCacheKey(Lcoil/memory/MemoryCache$Key;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final precision(Lcoil/size/Precision;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "precision"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 541
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->precision:Lcoil/size/Precision;

    return-object v0
.end method

.method public final premultipliedAlpha(Z)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 590
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 591
    iput-boolean p1, v0, Lcoil/request/ImageRequest$Builder;->premultipliedAlpha:Z

    return-object v0
.end method

.method public final removeHeader(Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 646
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final removeParameter(Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 672
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcoil/request/Parameters$Builder;->remove(Ljava/lang/String;)Lcoil/request/Parameters$Builder;

    :cond_0
    return-object v0
.end method

.method public final scale(Lcoil/size/Scale;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "scale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 526
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->scale:Lcoil/size/Scale;

    return-object v0
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 639
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    :goto_0
    invoke-virtual {v1, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcoil/request/ImageRequest$Builder;->setParameter$default(Lcoil/request/ImageRequest$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcoil/request/ImageRequest$Builder;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 663
    iget-object v1, v0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcoil/request/Parameters$Builder;

    invoke-direct {v1}, Lcoil/request/Parameters$Builder;-><init>()V

    :goto_0
    invoke-virtual {v1, p1, p2, p3}, Lcoil/request/Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcoil/request/Parameters$Builder;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v1, v0, Lcoil/request/ImageRequest$Builder;->parameters:Lcoil/request/Parameters$Builder;

    return-object v0
.end method

.method public final size(I)Lcoil/request/ImageRequest$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1, p1}, Lcoil/request/ImageRequest$Builder;->size(II)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final size(II)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 505
    new-instance v0, Lcoil/size/PixelSize;

    invoke-direct {v0, p1, p2}, Lcoil/size/PixelSize;-><init>(II)V

    check-cast v0, Lcoil/size/Size;

    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->size(Lcoil/size/Size;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final size(Lcoil/size/Size;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    sget-object v0, Lcoil/size/SizeResolver;->Companion:Lcoil/size/SizeResolver$Companion;

    invoke-virtual {v0, p1}, Lcoil/size/SizeResolver$Companion;->create(Lcoil/size/Size;)Lcoil/size/SizeResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->size(Lcoil/size/SizeResolver;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final size(Lcoil/size/SizeResolver;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 516
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->sizeResolver:Lcoil/size/SizeResolver;

    .line 517
    invoke-direct {v0}, Lcoil/request/ImageRequest$Builder;->resetResolvedValues()V

    return-object v0
.end method

.method public final target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    new-instance v0, Lcoil/target/ImageViewTarget;

    invoke-direct {v0, p1}, Lcoil/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    check-cast v0, Lcoil/target/Target;

    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    .line 760
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 761
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->target:Lcoil/target/Target;

    .line 762
    invoke-direct {v0}, Lcoil/request/ImageRequest$Builder;->resetResolvedValues()V

    return-object v0
.end method

.method public final target(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    const-string/jumbo v0, "onStart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onSuccess"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    new-instance v0, Lcoil/request/ImageRequest$Builder$target$4;

    invoke-direct {v0, p1, p2, p3}, Lcoil/request/ImageRequest$Builder$target$4;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lcoil/target/Target;

    invoke-virtual {p0, v0}, Lcoil/request/ImageRequest$Builder;->target(Lcoil/target/Target;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final transformations(Ljava/util/List;)Lcoil/request/ImageRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcoil/transform/Transformation;",
            ">;)",
            "Lcoil/request/ImageRequest$Builder;"
        }
    .end annotation

    const-string/jumbo v0, "transformations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 477
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->transformations:Ljava/util/List;

    return-object v0
.end method

.method public final varargs transformations([Lcoil/transform/Transformation;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "transformations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcoil/request/ImageRequest$Builder;->transformations(Ljava/util/List;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final transition(Lcoil/transition/Transition;)Lcoil/request/ImageRequest$Builder;
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    move-object v0, p0

    check-cast v0, Lcoil/request/ImageRequest$Builder;

    .line 781
    iput-object p1, v0, Lcoil/request/ImageRequest$Builder;->transition:Lcoil/transition/Transition;

    return-object v0
.end method
