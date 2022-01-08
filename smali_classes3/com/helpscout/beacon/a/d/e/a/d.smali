.class public final Lcom/helpscout/beacon/a/d/e/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:La/a/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 44

    const-string v0, "xls"

    const-string v1, "xlsm"

    const-string v2, "xlsx"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "pdf"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "png"

    const-string v1, "jpeg"

    const-string v2, "jpg"

    const-string v3, "bmp"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/a/d/e/a/d;->c:Ljava/util/List;

    const-string v1, "asp"

    const-string v2, "aspx"

    const-string v3, "axd"

    const-string v4, "asx"

    const-string v5, "asmx"

    const-string v6, "ashx"

    const-string v7, "c"

    const-string v8, "cpp"

    const-string v9, "css"

    const-string v10, "cfm"

    const-string v11, "yaws"

    const-string v12, "swf"

    const-string v13, "h"

    const-string v14, "html"

    const-string v15, "htm"

    const-string v16, "xhtml"

    const-string v17, "jhtml"

    const-string v18, "jsp"

    const-string v19, "jspx"

    const-string v20, "wss"

    const-string v21, "do"

    const-string v22, "action"

    const-string v23, "js"

    const-string v24, "pl"

    const-string v25, "php"

    const-string v26, "php4"

    const-string v27, "php4"

    const-string v28, "phtml"

    const-string v29, "py"

    const-string v30, "rb"

    const-string v31, "rhtml"

    const-string v32, "shtml"

    const-string v33, "xml"

    const-string v34, "rss"

    const-string v35, "svg"

    const-string v36, "cgi"

    const-string v37, "dll"

    const-string v38, "sh"

    const-string v39, "swift"

    const-string v40, "vb"

    const-string v41, "cs"

    const-string v42, "class"

    const-string v43, "kava"

    filled-new-array/range {v1 .. v43}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    const-string v1, "aif"

    const-string v2, "cda"

    const-string v3, "mid"

    const-string v4, "midi"

    const-string v5, "mp3"

    const-string v6, "mpa"

    const-string v7, "ogg"

    const-string v8, "wav"

    const-string v9, "wma"

    const-string v10, "wpl"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "zip"

    const-string v1, "tgz"

    const-string v2, "rar"

    const-string v3, "7z"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "doc"

    const-string v1, "docx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "txt"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "ppt"

    const-string v1, "pptx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    const-string v1, "flv"

    const-string v2, "mov"

    const-string v3, "ogg"

    const-string v4, "ogv"

    const-string v5, "gif"

    const-string v6, "avi"

    const-string v7, "wmv"

    const-string v8, "mp4"

    const-string v9, "mpg"

    const-string v10, "mpeg"

    const-string v11, "3gp"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/a/d/e/a/d;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La/a/a/a/a/a;)V
    .locals 1

    const-string v0, "originalUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentFileCompat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/e/a/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/e/a/d;->b:La/a/a/a/a/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/e/a/d;->b:La/a/a/a/a/a;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->nameWithExtension(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()La/a/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/e/a/d;->b:La/a/a/a/a/a;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/e/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/e/a/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/e/a/d;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/a/d/e/a/d;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isExtensionValid(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/a/d/e/a/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/d/e/a/d;

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/e/a/d;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/a/d/e/a/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/e/a/d;->b:La/a/a/a/a/a;

    iget-object p1, p1, Lcom/helpscout/beacon/a/d/e/a/d;->b:La/a/a/a/a/a;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Z
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/e/a/d;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/a/d/e/a/d;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isExtensionValid(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/e/a/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/e/a/d;->b:La/a/a/a/a/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attachment(originalUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/e/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", documentFileCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/e/a/d;->b:La/a/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
