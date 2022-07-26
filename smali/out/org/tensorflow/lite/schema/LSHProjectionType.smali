.class public final Lorg/tensorflow/lite/schema/LSHProjectionType;
.super Ljava/lang/Object;
.source "LSHProjectionType.java"


# static fields
.field public static final DENSE:B = 0x2t

.field public static final SPARSE:B = 0x1t

.field public static final UNKNOWN:B

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    const-string v0, "UNKNOWN"

    const-string v1, "SPARSE"

    const-string v2, "DENSE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/schema/LSHProjectionType;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # I

    .line 13
    sget-object v0, Lorg/tensorflow/lite/schema/LSHProjectionType;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
