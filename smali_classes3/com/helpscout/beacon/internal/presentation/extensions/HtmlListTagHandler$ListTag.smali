.class abstract Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ListTag"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0008\"\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u001d\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH$\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;",
        "",
        "Landroid/text/Editable;",
        "text",
        "",
        "appendBlankLineIfNeeded",
        "(Landroid/text/Editable;)V",
        "Landroid/text/Spanned;",
        "getLast",
        "(Landroid/text/Spanned;)Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;",
        "openItem",
        "",
        "indentation",
        "closeItem",
        "(Landroid/text/Editable;I)V",
        "",
        "getReplaces",
        "(Landroid/text/Editable;I)[Ljava/lang/Object;",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final appendBlankLineIfNeeded(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const-string v0, "\n"

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1
    return-void
.end method

.method private final getLast(Landroid/text/Spanned;)Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;
    .locals 3

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;

    const-string v0, "listTags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final closeItem(Landroid/text/Editable;I)V
    .locals 6

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;->appendBlankLineIfNeeded(Landroid/text/Editable;)V

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;->getReplaces(Landroid/text/Editable;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;->getLast(Landroid/text/Spanned;)Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p1, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-eq v2, v0, :cond_0

    array-length v1, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    const/16 v5, 0x21

    invoke-interface {p1, v4, v2, v0, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract getReplaces(Landroid/text/Editable;I)[Ljava/lang/Object;
.end method

.method public openItem(Landroid/text/Editable;)V
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;->appendBlankLineIfNeeded(Landroid/text/Editable;)V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x11

    invoke-interface {p1, p0, v0, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
