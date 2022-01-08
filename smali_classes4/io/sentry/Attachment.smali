.class public final Lio/sentry/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# static fields
.field private static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"


# instance fields
.field private final addToTransactions:Z

.field private bytes:[B

.field private final contentType:Ljava/lang/String;

.field private final filename:Ljava/lang/String;

.field private pathname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "application/octet-stream"

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    .line 140
    iput-boolean p4, p0, Lio/sentry/Attachment;->addToTransactions:Z

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const-string v0, "application/octet-stream"

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lio/sentry/Attachment;->bytes:[B

    .line 66
    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    .line 68
    iput-boolean p4, p0, Lio/sentry/Attachment;->addToTransactions:Z

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 149
    iget-object v0, p0, Lio/sentry/Attachment;->bytes:[B

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPathname()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    return-object v0
.end method

.method isAddToTransactions()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lio/sentry/Attachment;->addToTransactions:Z

    return v0
.end method
