.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;,
        Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R(\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;",
        "Landroid/text/Html$ImageGetter;",
        "",
        "source",
        "Landroid/graphics/drawable/Drawable;",
        "getDrawable",
        "(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;",
        "",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;",
        "targets",
        "Ljava/util/List;",
        "getTargets",
        "()Ljava/util/List;",
        "setTargets",
        "(Ljava/util/List;)V",
        "Landroid/widget/TextView;",
        "textView",
        "Landroid/widget/TextView;",
        "<init>",
        "(Landroid/widget/TextView;)V",
        "DrawablePlaceHolder",
        "PlaceholderDrawable",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;->textView:Landroid/widget/TextView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;->targets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;->textView:Landroid/widget/TextView;

    invoke-direct {v1, v2, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;-><init>(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;->textView:Landroid/widget/TextView;

    invoke-direct {p1, v1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;-><init>(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;->targets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;->targets:Ljava/util/List;

    return-object v0
.end method

.method public final setTargets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;->targets:Ljava/util/List;

    return-void
.end method
