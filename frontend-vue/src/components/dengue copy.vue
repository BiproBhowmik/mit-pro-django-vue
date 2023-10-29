<template>
    <div>
        <h1>Hello! Welcome to Dengue Prediction Process</h1>
        <h3>Enter Your Coresponding Informations</h3>
        <div class="row">
            <div ref="focusForm" class="col-12 col-md-12 col-lg-12 _mar_b10 p-5">
                <h4>Details</h4>
                <div class="row">
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Name</label>
                        <Input class="w-100" v-model="person_info.name" placeholder="Enter something..." />
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Gender</label>
                        <RadioGroup v-model="dengue_info.sex">
                            <Radio label="1">Male</Radio>
                            <Radio label="2">Female</Radio>
                        </RadioGroup>
                    </div>

                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Age (in months)</label>
                        <Input class="w-100" type="number" min="1" v-model="dengue_info.age"
                            placeholder="Enter something..." />
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Weight (in kilograms)</label>
                        <Input class="w-100" type="number" min="1" v-model="dengue_info.wgt"
                            placeholder="Enter something..." />
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Height (in meter )</label>
                        <Input class="w-100" type="number" min="1" v-model="dengue_info.hgt"
                            placeholder="Enter something..." />
                    </div>


                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Presence of Fever</label>
                        <RadioGroup v-model="dengue_info.fever">
                            <Radio label="1">Yes</Radio>
                            <Radio label="0">No</Radio>
                        </RadioGroup>
                    </div>


                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Platelet Count (blood platelets per microliter)</label>
                        <Input class="w-100" type="number" min="1" v-model="dengue_info.platelet"
                            placeholder="Enter something..." />
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Hematocrit Level (percentage of red blood cells)</label>
                        <Input class="w-100" type="number" min="1" v-model="dengue_info.hemato"
                            placeholder="Enter something..." />
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">White Blood Cell Count (per microliter)</label>
                        <Input class="w-100" type="number" min="1" v-model="dengue_info.wbc"
                            placeholder="Enter something..." />
                    </div>

                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Presence of Joint Pain</label>
                        <RadioGroup v-model="dengue_info.j_pain">
                            <Radio label="1">Present</Radio>
                            <Radio label="0">Absent</Radio>
                        </RadioGroup>
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Presence of Skin Rash</label>
                        <RadioGroup v-model="dengue_info.s_rash">
                            <Radio label="1">Present</Radio>
                            <Radio label="0">Absent</Radio>
                        </RadioGroup>
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Presence of Severe Headache</label>
                        <RadioGroup v-model="dengue_info.headache">
                            <Radio label="1">Present</Radio>
                            <Radio label="0">Absent</Radio>
                        </RadioGroup>
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Presence of Abdominal Pain</label>
                        <RadioGroup v-model="dengue_info.abdo_pain">
                            <Radio label="1">Present</Radio>
                            <Radio label="0">Absent</Radio>
                        </RadioGroup>
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Presence of Vomiting</label>
                        <RadioGroup v-model="dengue_info.vomit">
                            <Radio label="1">Present</Radio>
                            <Radio label="0">Absent</Radio>
                        </RadioGroup>
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Presence of Bleeding</label>
                        <RadioGroup v-model="dengue_info.bleed">
                            <Radio label="1">Present</Radio>
                            <Radio label="0">Absent</Radio>
                        </RadioGroup>
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Dengue NS1 Antigen Test Result</label>
                        <RadioGroup v-model="dengue_info.ns1_anti">
                            <Radio label="1">Positive</Radio>
                            <Radio label="0">Negative</Radio>
                        </RadioGroup>
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Dengue IgM Antibody Test Result</label>
                        <RadioGroup v-model="dengue_info.igm_anti">
                            <Radio label="1">Positive</Radio>
                            <Radio label="0">Negative</Radio>
                        </RadioGroup>
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Dengue IgG Antibody Test Result</label>
                        <RadioGroup v-model="dengue_info.igg_anti">
                            <Radio label="1">Positive</Radio>
                            <Radio label="0">Negative</Radio>
                        </RadioGroup>
                    </div>
                    <div class="col-md-3 min-padding">
                        <label class="mb-0 font-weight-bold w-100" for="">Hospitalization</label>
                        <RadioGroup v-model="dengue_info.hospi">
                            <Radio label="1">Yes</Radio>
                            <Radio label="0">No</Radio>
                        </RadioGroup>
                    </div>
                </div>

                <div class="m-5">
                    <!-- <Button v-if="person_info.id" @click="updateNotice()" type="primary" long>Update</Button> -->
                    <Button @click="predictDengue()" type="success" long>Predict</Button>
                </div>
            </div>

            <Modal
                v-model="result_modal"
                title="Dengue Prediction result"
                @on-ok="ok"
                @on-cancel="cancel">
                <h2>Hello {{ person_info.name }} !!</h2>
                <div>
                    <h5 v-if="result.data == 1">Machine predicted Dengue Positive !! &#128549;</h5>
                    <h5 v-if="result.data == 0">Machine predicted Dengue Negative !! &#128522;</h5>
                </div>
            </Modal>

        </div>
        <div>

        </div>
    </div>
</template>

<script>
import axios from 'axios';

export default {
    data() {
        return {
            result: {
                data: 0
            },
            result_modal: false,
            person_info: {
                name: ""
            },
            dengue_info: {
                igg_anti: "",
                sex: "",
                age: "",
                wgt: "",
                hgt: "",
                fever: "",
                platelet: "",
                hemato: "",
                wbc: "",
                j_pain: "",
                s_rash: "",
                headache: "",
                abdo_pain: "",
                vomit: "",
                bleed: "",
                ns1_anti: "",
                igm_anti: "",
                hospi: ""
            }


        }
    },
    methods:{
        async predictDengue(){
            if(this.hasEmptyOrNullValues(this.dengue_info))
            {
                this.$Message.error('All File is required');
                return;
            }
            const response = await axios.post('dengue/prediction/', this.dengue_info);
            if (response.data.status === 'OK') {
                this.result.data = response.data.predictions;
                this.result_modal = true;
            }
            else{
                this.$Message.error(response.data.message);
            }
        },

        hasEmptyOrNullValues(obj) {
            for (const key in obj) {
                if (obj[key] === "" || obj[key] === null) {
                    return true; // Return true if any key has an empty string or null value
                }
            }
            return false; // Return false if all keys have valid values
        }
    },
}
</script>