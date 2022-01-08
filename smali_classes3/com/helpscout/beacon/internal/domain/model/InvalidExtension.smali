.class public final Lcom/helpscout/beacon/internal/domain/model/InvalidExtension;
.super Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/InvalidExtension;",
        "Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;",
        "",
        "message",
        "La/a/a/a/a/a;",
        "documentFileCompat",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;La/a/a/a/a/a;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentFileCompat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;-><init>(Ljava/lang/String;La/a/a/a/a/a;)V

    return-void
.end method
