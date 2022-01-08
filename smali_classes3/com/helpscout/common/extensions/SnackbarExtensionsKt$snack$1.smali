.class public final Lcom/helpscout/common/extensions/SnackbarExtensionsKt$snack$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SnackbarExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/extensions/SnackbarExtensionsKt;->snack$default(Landroid/view/View;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbarExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnackbarExtensions.kt\ncom/helpscout/common/extensions/SnackbarExtensionsKt$snack$1\n*L\n1#1,97:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/helpscout/common/extensions/SnackbarExtensionsKt$snack$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/common/extensions/SnackbarExtensionsKt$snack$1;

    invoke-direct {v0}, Lcom/helpscout/common/extensions/SnackbarExtensionsKt$snack$1;-><init>()V

    sput-object v0, Lcom/helpscout/common/extensions/SnackbarExtensionsKt$snack$1;->INSTANCE:Lcom/helpscout/common/extensions/SnackbarExtensionsKt$snack$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lcom/helpscout/common/extensions/SnackbarExtensionsKt$snack$1;->invoke(Lcom/google/android/material/snackbar/Snackbar;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
