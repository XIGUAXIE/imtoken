.class public final Lcom/helpscout/beacon/internal/presentation/extensions/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 1

    const-string v0, "$this$applyBeaconColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static final a(Landroid/view/ViewGroup;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 1

    const-string v0, "$this$applyBeaconColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public static final a(Landroid/widget/Button;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 10

    const-string v0, "$this$applyBeaconColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x101009e

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v7, -0x101009e

    aput v7, v4, v6

    aput-object v4, v2, v3

    new-array v4, v1, [I

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v8

    aput v8, v4, v6

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_button_disabled_text:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v4, v3

    invoke-direct {v0, v2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v1, [[I

    new-array v4, v3, [I

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    aput v7, v4, v6

    aput-object v4, v2, v3

    new-array v1, v1, [I

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v4

    aput v4, v1, v6

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_button_disabled_bg:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    instance-of v0, p0, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static final a(Landroid/widget/ImageView;Lcom/helpscout/beacon/internal/presentation/common/b;Z)V
    .locals 1

    const-string v0, "$this$applyBeaconColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string p2, "background"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result p1

    invoke-static {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/d;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;Lcom/helpscout/beacon/internal/presentation/common/b;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/ImageView;Lcom/helpscout/beacon/internal/presentation/common/b;Z)V

    return-void
.end method

.method public static final a(Landroid/widget/ProgressBar;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 1

    const-string v0, "$this$applyBeaconColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static final a(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 1

    const-string v0, "$this$applyBeaconTextColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static final a(Landroidx/recyclerview/widget/RecyclerView;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 1

    const-string v0, "$this$applyBeaconColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/extensions/a/c$a;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c$a;-><init>(Lcom/helpscout/beacon/internal/presentation/common/b;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    return-void
.end method

.method public static final a(Lcom/google/android/material/tabs/TabLayout;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 2

    const-string v0, "$this$applyBeaconColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v0

    const/16 v1, 0xb4

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    return-void
.end method

.method public static final b(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 1

    const-string v0, "$this$applyReducedAlphaBeaconTextColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result p1

    const/16 v0, 0xb4

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
