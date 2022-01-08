.class public final Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u001a\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a3\u0010\u000c\u001a\u00020\n*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0016\u0010\u000b\u001a\u0012\u0012\u0008\u0012\u00060\u0008j\u0002`\t\u0012\u0004\u0012\u00020\n0\u0007H\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a\u0013\u0010\u0010\u001a\u00020\u000f*\u00020\u000eH\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\u0013\u0010\u0013\u001a\u00020\u0012*\u00020\u000eH\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\u0013\u0010\u0015\u001a\u00020\u0012*\u00020\u000eH\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0014\u001a\u0013\u0010\u0016\u001a\u00020\u000f*\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u0013\u0010\u0018\u001a\u00020\u000f*\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0017\u001a\u0013\u0010\u0019\u001a\u00020\u000f*\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\"\u001c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroid/content/Intent;",
        "Landroid/net/Uri;",
        "getDataUri",
        "(Landroid/content/Intent;)Landroid/net/Uri;",
        "Landroid/app/Activity;",
        "Ljava/io/File;",
        "file",
        "Lkotlin/Function1;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "",
        "ifFails",
        "openFile",
        "(Landroid/app/Activity;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V",
        "La/a/a/a/a/a;",
        "",
        "isValidExtension",
        "(La/a/a/a/a/a;)Z",
        "",
        "nameWithExtension",
        "(La/a/a/a/a/a;)Ljava/lang/String;",
        "extension",
        "isFileScheme",
        "(Landroid/net/Uri;)Z",
        "isContentScheme",
        "isValidAttachmentExtension",
        "(Ljava/lang/String;)Z",
        "",
        "invalidExtensions",
        "[Ljava/lang/String;",
        "beacon_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final invalidExtensions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 69

    const-string v0, "gzquar"

    const-string v1, "zix"

    const-string v2, "swf"

    const-string v3, "sys"

    const-string v4, "lnk"

    const-string v5, "js"

    const-string v6, "com"

    const-string v7, "ozd"

    const-string v8, "ws"

    const-string v9, "aru"

    const-string v10, "bat"

    const-string v11, "drv"

    const-string v12, "pif"

    const-string v13, "bin"

    const-string v14, "dev"

    const-string v15, "vexe"

    const-string v16, "386"

    const-string v17, "php3"

    const-string v18, "vb"

    const-string v19, "vxd"

    const-string v20, "pcx"

    const-string v21, "dxz"

    const-string v22, "sop"

    const-string v23, "boo"

    const-string v24, "cla"

    const-string v25, "cih"

    const-string v26, "s7p"

    const-string v27, "exe_renamed"

    const-string v28, "smtmp"

    const-string v29, "hlw"

    const-string v30, "dyz"

    const-string v31, "fag"

    const-string v32, "dlb"

    const-string v33, "mfu"

    const-string v34, "lik"

    const-string v35, "dyv"

    const-string v36, "bxz"

    const-string v37, "wsc"

    const-string v38, "ska"

    const-string v39, "dllx"

    const-string v40, "fjl"

    const-string v41, "txs"

    const-string v42, "cfxxe"

    const-string v43, "xdu"

    const-string v44, "spam"

    const-string v45, "iws"

    const-string v46, "nls"

    const-string v47, "cxq"

    const-string v48, "dbd"

    const-string v49, "xlv"

    const-string v50, "tko"

    const-string v51, "bhx"

    const-string v52, "atm"

    const-string v53, "vzr"

    const-string v54, "lkh"

    const-string v55, "hsq"

    const-string v56, "bmw"

    const-string v57, "ssy"

    const-string v58, "aepl"

    const-string v59, "dx"

    const-string v60, "lok"

    const-string v61, "plc"

    const-string v62, "bqf"

    const-string v63, "pr"

    const-string v64, "aut"

    const-string v65, "capxml"

    const-string v66, "exe"

    const-string v67, "dmg"

    const-string v68, ""

    filled-new-array/range {v0 .. v68}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->invalidExtensions:[Ljava/lang/String;

    return-void
.end method

.method public static final extension(La/a/a/a/a/a;)Ljava/lang/String;
    .locals 9

    const-string v0, "$this$extension"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_7

    invoke-virtual {p0}, La/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "."

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, La/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "."

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v2

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string p0, "(this as java.lang.String).substring(startIndex)"

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v0, ""

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, La/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string p0, "extension"

    :goto_2
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static final getDataUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final isContentScheme(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "$this$isContentScheme"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isFileScheme(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "$this$isFileScheme"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isValidAttachmentExtension(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "$this$isValidAttachmentExtension"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->invalidExtensions:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final isValidExtension(La/a/a/a/a/a;)Z
    .locals 1

    const-string v0, "$this$isValidExtension"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->extension(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->isValidAttachmentExtension(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final nameWithExtension(La/a/a/a/a/a;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$nameWithExtension"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "."

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->extension(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final openFile(Landroid/app/Activity;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$openFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifFails"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/common/i;->c:Lcom/helpscout/beacon/internal/presentation/common/i$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/i$a;->a(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3f2

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
