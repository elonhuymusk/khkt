.class public final Lorg/tensorflow/lite/support/metadata/schema/AssociatedFileType;
.super Ljava/lang/Object;
.source "AssociatedFileType.java"


# static fields
.field public static final DESCRIPTIONS:B = 0x1t

.field public static final TENSOR_AXIS_LABELS:B = 0x2t

.field public static final TENSOR_AXIS_SCORE_CALIBRATION:B = 0x4t

.field public static final TENSOR_VALUE_LABELS:B = 0x3t

.field public static final UNKNOWN:B = 0x0t

.field public static final VOCABULARY:B = 0x5t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 14
    const-string v0, "UNKNOWN"

    const-string v1, "DESCRIPTIONS"

    const-string v2, "TENSOR_AXIS_LABELS"

    const-string v3, "TENSOR_VALUE_LABELS"

    const-string v4, "TENSOR_AXIS_SCORE_CALIBRATION"

    const-string v5, "VOCABULARY"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFileType;->names:[Ljava/lang/String;

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

    .line 16
    sget-object v0, Lorg/tensorflow/lite/support/metadata/schema/AssociatedFileType;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
