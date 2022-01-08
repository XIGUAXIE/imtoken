.class public final Lcom/helpscout/beacon/a/d/d/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/d/d/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/helpscout/beacon/a/d/d/i/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "agentName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    sget-object p0, Lcom/helpscout/beacon/internal/presentation/common/k;->c:Lcom/helpscout/beacon/internal/presentation/common/k$a;

    invoke-virtual {p0, p1, p3}, Lcom/helpscout/beacon/internal/presentation/common/k$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Landroidx/core/app/Person$Builder;

    invoke-direct {p1}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object p0

    const-string p1, "Person.Builder().apply {\u2026(it)) }\n        }.build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lcom/helpscout/beacon/a/d/d/i/b;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic a(Lcom/helpscout/beacon/a/d/d/i/b;ILandroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;ILjava/lang/Object;)V
    .locals 9

    if-nez p8, :cond_2

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Lcom/helpscout/beacon/a/d/d/i/b;->a(ILandroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: showNotification"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a(Lcom/helpscout/beacon/a/d/d/i/b;ILandroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;ILjava/lang/Object;)Z
    .locals 10

    if-nez p9, :cond_2

    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/helpscout/beacon/a/d/d/i/b;->a(ILandroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: updateActiveNotification"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/helpscout/beacon/a/d/d/i/b;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->fromHtmlCompact(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
