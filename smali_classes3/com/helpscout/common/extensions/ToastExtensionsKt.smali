.class public final Lcom/helpscout/common/extensions/ToastExtensionsKt;
.super Ljava/lang/Object;
.source "ToastExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToastExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToastExtensions.kt\ncom/helpscout/common/extensions/ToastExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,27:1\n1#2:28\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00082\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\t"
    }
    d2 = {
        "toast",
        "Landroid/widget/Toast;",
        "Landroid/content/Context;",
        "messageRes",
        "",
        "length",
        "message",
        "",
        "Landroid/view/View;",
        "android-common_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final toast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1

    const-string v0, "$this$toast"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(messageRes)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/helpscout/common/extensions/ToastExtensionsKt;->toast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final toast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1

    const-string v0, "$this$toast"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p1, "Toast.makeText(this, mes\u2026length).also(Toast::show)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toast(Landroid/view/View;II)Landroid/widget/Toast;
    .locals 1

    const-string v0, "$this$toast"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/helpscout/common/extensions/ToastExtensionsKt;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final toast(Landroid/view/View;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1

    const-string v0, "$this$toast"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/helpscout/common/extensions/ToastExtensionsKt;->toast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 10
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/helpscout/common/extensions/ToastExtensionsKt;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toast$default(Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 15
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/helpscout/common/extensions/ToastExtensionsKt;->toast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toast$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 20
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/helpscout/common/extensions/ToastExtensionsKt;->toast(Landroid/view/View;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toast$default(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)Landroid/widget/Toast;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 25
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/helpscout/common/extensions/ToastExtensionsKt;->toast(Landroid/view/View;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method
