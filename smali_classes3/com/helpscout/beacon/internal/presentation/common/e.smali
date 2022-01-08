.class public final Lcom/helpscout/beacon/internal/presentation/common/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/presentation/common/b;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/helpscout/beacon/BeaconDatastore;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_toolbar_text_dark:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->d:I

    sget v0, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_toolbar_text_light:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->e:I

    invoke-interface {p2}, Lcom/helpscout/beacon/BeaconDatastore;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getDisplay()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->getColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget p2, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_default_color_primary:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/e;->a(I)V

    return-void
.end method

.method private final b(I)I
    .locals 0

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->d:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->e:I

    :goto_0
    return p1
.end method

.method private final c(I)I
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    add-int/lit8 v0, v0, -0x1e

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v1, -0x1e

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v2, -0x1e

    if-ltz v2, :cond_2

    move v3, v2

    :cond_2
    invoke-static {p1, v0, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->a:I

    return v0
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->a:I

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/e;->c(I)I

    move-result v0

    iput v0, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->c:I

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/e;->b(I)I

    move-result p1

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->b:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/e;->c:I

    return v0
.end method
