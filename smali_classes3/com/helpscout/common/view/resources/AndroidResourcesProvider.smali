.class public final Lcom/helpscout/common/view/resources/AndroidResourcesProvider;
.super Ljava/lang/Object;
.source "AndroidResourcesProvider.kt"

# interfaces
.implements Lcom/helpscout/common/view/resources/AndroidResources;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008H\u0017J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008H\u0016J+\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\t\u001a\u00020\u00082\u0012\u0010\u000c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\r\"\u00020\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fR\u0016\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/helpscout/common/view/resources/AndroidResourcesProvider;",
        "Lcom/helpscout/common/view/resources/AndroidResources;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "color",
        "",
        "resId",
        "string",
        "",
        "formatArgs",
        "",
        "",
        "(I[Ljava/lang/Object;)Ljava/lang/String;",
        "android-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/common/view/resources/AndroidResourcesProvider;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public color(I)I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/helpscout/common/view/resources/AndroidResourcesProvider;->appContext:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/helpscout/common/extensions/ContextExtensionsKt;->color(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public string(I)Ljava/lang/String;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/helpscout/common/view/resources/AndroidResourcesProvider;->appContext:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/helpscout/common/extensions/ContextExtensionsKt;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs string(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, "formatArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/helpscout/common/view/resources/AndroidResourcesProvider;->appContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "appContext.getString(resId, formatArgs)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
