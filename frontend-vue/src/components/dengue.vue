<template>
    <div class="main-content ptb-40">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <h4> Dengue Disease Prediction Tool (DDPT)</h4>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="container">

                        <fieldset class="ptb-20 mb-30">
                            <legend>Personal Information</legend>
                            <div class="row mb-20">
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label for="name" class="mb-10">Patient Name:</label>
                                        <input v-model="person_info.name" type="text" class="form-control" id="name"
                                            placeholder="Enter Patient name">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Gender:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Sex">
                                            <Radio label="1">Male</Radio>
                                            <Radio label="0">Female</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label for="age" class="mb-10">Age (year):</label>
                                        <input v-model="dengue_info.Patient_Age_Years" type="number" class="form-control" id="age"
                                            placeholder="Enter your age">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label for="age" class="mb-10">Patient Race:</label>
                                        <Select size="large" v-model="dengue_info.Race">
                                            <Option v-for="item in raceList" :value="item.value" :key="item.value">{{ item.label }}</Option>
                                        </Select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label for="age" class="mb-10">Residence Area:</label>
                                        <Select size="large" v-model="dengue_info.Residence_Area">
                                            <Option v-for="item in residenceAreaList" :value="item.value" :key="item.value">{{ item.label }}</Option>
                                        </Select>
                                    </div>
                                </div>
                                <!-- <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label for="height" class="mb-10">Height (m):</label>
                                        <input v-model="dengue_info.hgt" type="number" class="form-control" id="height"
                                            placeholder="Enter your height">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label for="weight" class="mb-10">Weight (kg):</label>
                                        <input v-model="dengue_info.wgt" type="number" class="form-control" id="weight"
                                            placeholder="Enter your weight">
                                    </div>
                                </div> -->

                            </div>
                        </fieldset>
                        <!-- generic information -->
                        <fieldset class="mb-30">
                            <legend>Clinical Symptom</legend>
                            <div class="row mb-20">
                                
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-20">Fever:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Fever">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-20">Myalgia:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Myalgia">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-15">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Headache:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Headache">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-15">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Rash:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Rash">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-15">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Vomiting:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Vomiting">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Nausea:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Nausea">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Back Pain:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Back_Pain">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Conjunctivitis:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Conjunctivitis">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Arthritis:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Arthritis">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Artralgia:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Artralgia">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Petechiae:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Petechiae">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Tourniquet Test:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Tourniquet_Test">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Retroorbital Pain:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Retroorbital_Pain">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                
                            </div>
                        </fieldset>
                        <!-- generic information -->
                        <fieldset>
                            <legend>Pre-existing Disease</legend>
                            <div class="row mb-20">
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Diabetes:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Diabetes">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Hematological Disease:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Hematological_Disease">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Liver Disease:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Liver_Disease">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Kidney Disease:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Kidney_Disease">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Hypertension:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Hypertension">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Peptic Acid Disease:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Peptic_Acid_Disease">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Auto Immune Disease:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.Auto_Immune_Disease">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="2">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                            </div>
                            
                        </fieldset>

                        <fieldset class="ptb-20 mb-30">
                            <legend>Other Information</legend>
                            <div class="row mb-20">
                                <div class="col-md-3">
                                    <div class="form-group mt-15">
                                        <label for="age" class="mb-10">Day Count of Symptoms:</label>
                                        <input v-model="dengue_info.Day_Count_of_Symptoms" type="number" class="form-control" id="age"
                                            placeholder="Day Count of Symptoms">
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="d-grid gap-2 text-center ptb-20">
                        <Button :loading="pridict_button.loading" @click="predictDengue()" type="primary" class="btn btn-primary"
                            name="predict">{{pridict_button.text}}</Button>
                    </div>
                </div>


                <Modal v-model="result_modal" title="Dengue Prediction result" @on-ok="ok" @on-cancel="cancel">
                    <h2>Hello, {{ person_info.name }}</h2>
                    <div>
                        <h5 v-if="result.data == 1">
                            The machine predicted you have Dengue. &#128549;
                            <br>
                            Please consult your nearby hospital.
                        </h5>
                        <h5 v-if="result.data == 0">We have a prediction that you do not have Dengue. &#128522;</h5>
                    </div>
                </Modal>

            </div>
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
                Sex: null,
                Patient_Age_Years: null,
                Race: null,
                Residence_Area: null,
                Fever: null,
                Myalgia: null,
                Headache: null,
                Rash: null,
                Vomiting: null,
                Nausea: null,
                Back_Pain: null,
                Conjunctivitis: null,
                Arthritis: null,
                Artralgia: null,
                Petechiae: null,
                Tourniquet_Test: null,
                Retroorbital_Pain: null,
                Diabetes: null,
                Hematological_Disease: null,
                Liver_Disease: null,
                Kidney_Disease: null,
                Hypertension: null,
                Peptic_Acid_Disease: null,
                Auto_Immune_Disease: null,
                Day_Count_of_Symptoms: null
            },
            raceList: [
                    {
                        value: 1,
                        label: 'White'
                    },
                    {
                        value: 2,
                        label: 'Black'
                    },
                    {
                        value: 3,
                        label: 'Yellow'
                    },
                    {
                        value: 4,
                        label: 'Brown'
                    },
                    {
                        value: 5,
                        label: 'Indigenous'
                    },
                    {
                        value: 9,
                        label: 'Ignored'
                    }
                ],
            residenceAreaList: [
                    {
                        value: 1,
                        label: 'Urban'
                    },
                    {
                        value: 2,
                        label: 'Rural'
                    },
                    {
                        value: 3,
                        label: 'Periurban'
                    }
                ],
            pridict_button: {
                text: 'Predict',
                loading: false,
            }


        }
    },
    methods: {
        async predictDengue() {
            if (this.hasEmptyOrNullValues(this.dengue_info)) {
                this.$Message.error('All Field is required');
                return;
            }
            this.buttonLoader('load');  //Predict Button Status
            const response = await axios.post('dengue/prediction/', this.dengue_info);
            if (response.data.status === 'OK') {
                this.result.data = response.data.predictions;
                this.result_modal = true;

                this.buttonLoader('not load');  //Predict Button Status
            }
            else {
                this.$Message.error(response.data.message);
                this.buttonLoader('not load');  //Predict Button Status
            }
        },

        buttonLoader(status)
        {
            if(status == 'load')
            {
                this.pridict_button.text = 'Loading...';
                this.pridict_button.loading = true;
            }
            else{
                this.pridict_button.text = 'Predict';
                this.pridict_button.loading = false;
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