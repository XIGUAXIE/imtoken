.class final Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;
.super Lcoil/memory/HardwareBitmapService;
.source "HardwareBitmapService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHardwareBitmapService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HardwareBitmapService.kt\ncoil/memory/LimitedFileDescriptorHardwareBitmapService\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Logs.kt\ncoil/util/-Logs\n*L\n1#1,202:1\n18#2:203\n22#3,4:204\n*E\n*S KotlinDebug\n*F\n+ 1 HardwareBitmapService.kt\ncoil/memory/LimitedFileDescriptorHardwareBitmapService\n*L\n79#1:203\n83#1,4:204\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;",
        "Lcoil/memory/HardwareBitmapService;",
        "()V",
        "FILE_DESCRIPTOR_CHECK_INTERVAL",
        "",
        "FILE_DESCRIPTOR_LIMIT",
        "MIN_SIZE_DIMENSION",
        "TAG",
        "",
        "decodesSinceLastFileDescriptorCheck",
        "fileDescriptorList",
        "Ljava/io/File;",
        "hasAvailableFileDescriptors",
        "",
        "allowHardware",
        "size",
        "Lcoil/size/Size;",
        "logger",
        "Lcoil/util/Logger;",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final FILE_DESCRIPTOR_CHECK_INTERVAL:I = 0x32

.field private static final FILE_DESCRIPTOR_LIMIT:I = 0x2ee

.field public static final INSTANCE:Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;

.field private static final MIN_SIZE_DIMENSION:I = 0x4b

.field private static final TAG:Ljava/lang/String; = "LimitedFileDescriptorHardwareBitmapService"

.field private static volatile decodesSinceLastFileDescriptorCheck:I

.field private static final fileDescriptorList:Ljava/io/File;

.field private static volatile hasAvailableFileDescriptors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;

    invoke-direct {v0}, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;-><init>()V

    sput-object v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->INSTANCE:Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->fileDescriptorList:Ljava/io/File;

    const/4 v0, 0x1

    .line 60
    sput-boolean v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcoil/memory/HardwareBitmapService;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final declared-synchronized hasAvailableFileDescriptors(Lcoil/util/Logger;)Z
    .locals 5

    monitor-enter p0

    .line 76
    :try_start_0
    sget v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->decodesSinceLastFileDescriptorCheck:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->decodesSinceLastFileDescriptorCheck:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 77
    sput v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->decodesSinceLastFileDescriptorCheck:I

    .line 79
    sget-object v1, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->fileDescriptorList:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    :goto_0
    array-length v1, v1

    const/16 v2, 0x2ee

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 80
    :cond_1
    sput-boolean v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors:Z

    .line 82
    sget-boolean v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "LimitedFileDescriptorHardwareBitmapService"

    const/4 v2, 0x5

    .line 204
    invoke-interface {p1}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    if-gt v3, v2, :cond_2

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to allocate more hardware bitmaps. Number of used file descriptors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v1, v3}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :cond_2
    sget-boolean p1, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public allowHardware(Lcoil/size/Size;Lcoil/util/Logger;)Z
    .locals 2

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v0, p1, Lcoil/size/PixelSize;

    if-eqz v0, :cond_1

    check-cast p1, Lcoil/size/PixelSize;

    invoke-virtual {p1}, Lcoil/size/PixelSize;->getWidth()I

    move-result v0

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcoil/size/PixelSize;->getHeight()I

    move-result p1

    if-ge p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 68
    :cond_1
    invoke-direct {p0, p2}, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->hasAvailableFileDescriptors(Lcoil/util/Logger;)Z

    move-result p1

    return p1
.end method
