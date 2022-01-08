.class public Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;",
        "",
        "La/a/a/a/a/a;",
        "documentFileCompat",
        "La/a/a/a/a/a;",
        "getDocumentFileCompat",
        "()La/a/a/a/a/a;",
        "",
        "message",
        "<init>",
        "(Ljava/lang/String;La/a/a/a/a/a;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final documentFileCompat:La/a/a/a/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;La/a/a/a/a/a;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;->documentFileCompat:La/a/a/a/a/a;

    return-void
.end method


# virtual methods
.method public final getDocumentFileCompat()La/a/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;->documentFileCompat:La/a/a/a/a/a;

    return-object v0
.end method
