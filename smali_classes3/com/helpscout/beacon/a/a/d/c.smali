.class public final Lcom/helpscout/beacon/a/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "$this$isValidEmail"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/helpscout/common/extensions/StringExtensionsKt;->isValidEmail(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
